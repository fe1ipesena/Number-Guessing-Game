#!/bin/bash

RANDOM_NUMBER=$(( $RANDOM % (1000 - 1 + 1) + 1)) 
echo $RANDOM_NUMBER

echo "Enter your username:"
read USERNAME

echo "Guess the secret number between 1 and 1000:"
while true; do
  read GUESS
  ((TRIES++))
  if ! [[ $GUESS =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
  elif [[ $GUESS -eq $RANDOM_NUMBER ]]; then
    echo "You guessed it in $TRIES tries. The secret number was $RANDOM_NUMBER. Nice job!"
    break
  elif [[ $GUESS -gt $RANDOM_NUMBER ]]; then
    echo "It's lower than that, guess again:"
  else
    echo "It's higher than that, guess again:"
  fi
done