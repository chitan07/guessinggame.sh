#!/usr/bin/env bash

# Function to count the number of files
count_files() {
  echo $(ls -1 | wc -l)
}

# Function for guessing game
guessing_game() {
  local correct_guess=$(count_files)
  local user_guess=0
  
  # Loop until the correct guess is made
  while [[ $user_guess -ne $correct_guess ]]
  do
    echo "How many files are in the current directory?"
    read user_guess
    if [[ $user_guess -lt $correct_guess ]]
    then
      echo "Your guess is too low."
    elif [[ $user_guess -gt $correct_guess ]]
    then
      echo "Your guess is too high."
    fi
  done

  # Congratulate the user when the guess is correct
  echo "Congratulations! You guessed the correct number of files: $correct_guess"
}

# Start the game
guessing_game
