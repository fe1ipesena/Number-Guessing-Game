# Number Guessing Game 🎯

Este projeto faz parte da **Relational Database Certification** da [freeCodeCamp](https://www.freecodecamp.org/) e consiste em um jogo de terminal onde o jogador tenta adivinhar um número secreto entre 1 e 1000. O script é escrito em **Bash** e utiliza **PostgreSQL** para armazenar dados dos usuários e estatísticas das partidas.

## 🛠 Tecnologias

- Bash
- PostgreSQL
- Git

## 📁 Estrutura
number_guessing_game/
├── number_guess.sh # Script principal do jogo
├── number_guess.sql # Dump do projeto em PostgreSQL
└── README.md # Descrição do projeto

## ✅ Funcionalidades

- Registro e identificação de usuários via terminal.
- Mensagem personalizada:
  - Primeira vez: mensagem de boas-vindas.
  - Usuário existente: exibe total de jogos e recorde de tentativas.
- Geração de número secreto aleatório.
- Validação de entradas (somente números inteiros).
- Feedback interativo: "é maior" ou "é menor".
- Armazenamento de dados no banco de dados PostgreSQL.

## 🧾 Estrutura do Banco de Dados

```sql
CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(22) UNIQUE NOT NULL
);

CREATE TABLE games (
  game_id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(user_id),
  guesses INT NOT NULL
);
```
📦 Exemplo de uso
$ ./number_guess.sh
Enter your username:
felipe
Welcome back, felipe! You have played 3 games, and your best game took 2 guesses.
Guess the secret number between 1 and 1000:

📌 Requisitos atendidos

 Script funcional em Bash

 Conexão e inserções com PostgreSQL

 Validação robusta de entrada

 Registro de usuários e jogos

 Mensagens dinâmicas com base no histórico

 Uso adequado de Git com múltiplos commits

🧠 Aprendizados

  Conexão entre Bash e PostgreSQL via psql

  Criação e uso de comandos SQL dentro de scripts

  Validação de dados e controle de fluxo em Bash

  Gerenciamento de banco de dados relacional com constraints


