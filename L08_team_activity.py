import random

# Random Number
# number = random.randint(1, 10)
# print(number)



keep_playing = 'yes'
while keep_playing == 'yes':
    random_number = random.randint(1,100)
    how_many_guesses = 0
    guess = -1
    while guess != random_number:
        guess = int(input("Guess what number I'm thinking (1 - 100): "))
        how_many_guesses = how_many_guesses + 1
        if guess > random_number:
            print("Too high. Pick a lower number.")
        elif guess < random_number:
            print("Too low, Pick a higher number.")
        else:
            print("That's correct. Let's play again!")
    print(f"You guessed {how_many_guesses} times.")
    if how_many_guesses == 1:
        print("Woah, how did you do that?!")
    elif how_many_guesses <= 5:
        print("Wow, you did really well!")
    elif how_many_guesses > 10:
        print("You are not good at guessing random numbers.")    
    else:
        print()
    keep_playing = input("Want to play again? yes/no:  ")
print("That was fun. Come back if you ever want to play again. :-)")
        
