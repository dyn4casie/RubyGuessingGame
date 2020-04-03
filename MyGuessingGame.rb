def easyLevel
    puts "Awwww, i see you are lily-hearted.\n Can you guess the magic number?"
    puts "Please enter a number between 1 and 10: "
    guess = gets.chomp().to_i
    while guess > 10 or guess < 1
      puts "You need to enter a number between 1 and 10: "
      guess = gets.chomp().to_i
    end
secret_number = rand(1..10)
guess = ""
guess_count = 1
guess_limit = 6
out_of_guesses = false

while guess != secret_number and !out_of_guesses
    if guess_count < guess_limit
        puts "That was wrong"
        puts "You have " + (guess_limit - (guess_count)).to_s + " guesses left. Guess again: "
    puts "Enter guess: "
    guess = gets.chomp().to_i
    while guess > 10 or guess < 1
        puts "You need to enter a number between 1 and 10: "
        guess = gets.chomp().to_i
      end
    guess_count += 1
else
    out_of_guesses = true
    end   
    end
    checkForWin(out_of_guesses)   
end

def mediumLevel
    puts "Hehehe...Still not brave enough.\nCan you guess the magic number?"
    puts "Please enter a number between 1 and 20: "
    guess = gets.chomp().to_i
    while guess > 20 or guess < 1
      puts "You need to enter a number between 1 and 20: "
      guess = gets.chomp().to_i
    end

secret_number = rand(1..20)
guess = ""
guess_count = 1
guess_limit = 4
out_of_guesses = false

while guess != secret_number and !out_of_guesses
    if guess_count < guess_limit
        puts "That was wrong"
        puts "You have " + (guess_limit - (guess_count)).to_s + " guesses left. Guess again: "
    puts "Enter guess: "
    guess = gets.chomp().to_i
    while guess > 20 or guess < 1
        puts "You need to enter a number between 1 and 10: "
        guess = gets.chomp().to_i
      end
    guess_count += 1
else
    out_of_guesses = true
    end   
    end
    checkForWin(out_of_guesses)   
end

def hardLevel
    puts "Hmmmm...Respect Legend, Hope this is tough enough.\nCan you guess the magic number?"
    puts "Please enter a number between 1 and 50: "
    guess = gets.chomp().to_i
    while guess > 50 or guess < 1
      puts "You need to enter a number between 1 and 50: "
      guess = gets.chomp().to_i
    end

    secret_number = rand(1..50)
guess = ""
guess_count = 1
guess_limit = 3
out_of_guesses = false

while guess != secret_number and !out_of_guesses
    if guess_count < guess_limit
        puts "That was wrong"
        puts "You have " + (guess_limit - (guess_count)).to_s + " guesses left. Guess again: "
    puts "Enter guess: "
    guess = gets.chomp().to_i
    while guess > 50 or guess < 1
        puts "You need to enter a number between 1 and 10: "
        guess = gets.chomp().to_i
      end
    guess_count += 1
else
    out_of_guesses = true
    end   
    end
    checkForWin(out_of_guesses)   
end

def checkForWin(out_of_guesses)
    if out_of_guesses
        puts "Game over!."
      else
        puts "You got it right!"
      end
    end
    
    def checkLevel(level)
        if level == "easy"
            easyLevel()
          elsif level == "medium"
            mediumLevel()
          elsif level == "hard"
            hardLevel()
          end
        end

        puts("Hello what is your name?")
        name = gets.chomp
        puts "Welcome to the number guessing game #{name}!"
        puts "There are 3 levels. These are easy, medium and hard."
        puts "Enter a level to continue: "
        level = gets.chomp().downcase
        if level == "easy" or level == "medium" or level == "hard"
          checkLevel(level)
        else
          puts "You have entered an invalid input."
      end