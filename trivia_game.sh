#!/bin/bash


question() {
    echo "$1"
    echo "Enter your answer: "
    read user_answer

    if [ "$user_answer" == "$2" ]; then
        echo "Correct!"
        score=$((score + 1))
    else
        echo "Wrong! The answer is: $2"
    fi
}

score=0

echo "Please enter your name:"
read name
echo "$name welcome to the trivia game!"


question "What is the largest planet in out solar system?" "Jupiter"
question "What is the tallest mountain in the world?" "Everest"
question "What is the biggest ocean on earth?" "Pacific ocean"
question "What is the most populated city in the world?" "Tokyo"
question "What is the deepest ocean trench?" "Mariana Trench"

echo "Thank you for playing, $name!"
echo "Your score is  $score out of 5 questions correct."





