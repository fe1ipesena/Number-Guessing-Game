#!/bin/bash

# gera número secreto entre 1 e 1000
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))
TRIES=0

# comando base para consultas ao banco
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# pedir e ler username
echo "Enter your username:"
read USERNAME

# buscar user_id (limpando espaços)
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'" | xargs)

if [[ -z $USER_ID ]]; then
  # primeiro acesso
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  $PSQL "INSERT INTO users(username) VALUES('$USERNAME')"
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'" | xargs)
else
  # usuário existente: buscar estatísticas (limpando espaços)
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID" | xargs)
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games WHERE user_id=$USER_ID" | xargs)
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# iniciar jogo
echo "Guess the secret number between 1 and 1000:"
while true; do
  read GUESS
  (( TRIES++ ))
  
  # validar inteiro
  if ! [[ $GUESS =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
  
  # acertou
  elif [[ $GUESS -eq $SECRET_NUMBER ]]; then
    echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
    $PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $TRIES)"
    break

  # palpite maior que o segredo
  elif [[ $GUESS -gt $SECRET_NUMBER ]]; then
    echo "It's lower than that, guess again:"

  # palpite menor que o segredo
  else
    echo "It's higher than that, guess again:"
  fi
done
