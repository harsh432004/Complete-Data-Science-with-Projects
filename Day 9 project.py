import random

def odd_even_game():
    print("Welcome to ODD/EVEN Hand Cricket Game!")

    while True:
        user_choice = input("Choose ODD or EVEN (q to quit): ").upper()

        if user_choice == 'Q':
            print("Thanks for playing! Exiting the game.")
            break

        if user_choice not in ["ODD", "EVEN"]:
            print("Invalid choice. Please choose ODD or EVEN.")
            continue

        print(f"You chose {user_choice}")

        user_number = int(input("Choose a number between 1 and 6: "))
        if user_number not in range(1, 7):
            print("Invalid number. Please choose a number between 1 and 6.")
            continue

        computer_number = random.randint(1, 6)
        print(f"The computer chose {computer_number}")

        toss = user_number + computer_number
        print(f"Toss result: {toss}")

        if toss % 2 == 0:
            toss_result = "EVEN"
        else:
            toss_result = "ODD"

        print(f"Toss result is {toss_result}")

        if toss_result == user_choice:
            print("You won the toss! Choose BAT or BALL.")
            user_decision = input("Choose BAT or BALL: ").upper()

            if user_decision not in ["BAT", "BALL"]:
                print("Invalid choice. Please choose BAT or BALL.")
                continue

            print(f"You chose {user_decision}")
            print("Let's start the game!")

            user_counter = 0
            computer_counter = 0

            while True:
                user_ball = int(input("Enter your shot (1-6): "))
                if user_ball not in range(1, 7):
                    print("Invalid input. Please enter a number between 1 and 6.")
                    continue

                computer_ball = random.randint(1, 6)
                print(f"Computer's ball: {computer_ball}")

                if user_ball == computer_ball:
                    print("OUT! Computer's turn to bat.")
                    break

                if user_decision == "BAT":
                    user_counter += user_ball
                else:
                    computer_counter += computer_ball

                print(f"Your score: {user_counter} | Computer score: {computer_counter}")

            if user_counter > computer_counter:
                print("Congratulations! You won the game.")
            elif user_counter < computer_counter:
                print("Oops! You lost the game.")
            else:
                print("It's a tie!")

        else:
            print("Computer won the toss. Let the computer bat first.")

if __name__ == "__main__":
    odd_even_game()
