math.randomseed(os.time())

function guessNumber()
    local number = math.random(1, 100)
    local attempts = 0

    print("Welcome to the Number Guessing Game!")
    print("I'm thinking of a number between 1 and 100. Can you guess it?")

    while true do
        io.write("Enter your guess: ")
        local guess = tonumber(io.read())
        attempts = attempts + 1

        if guess < number then
            print("Too low! Try a higher number.")
        elseif guess > number then
            print("Too high! Try a lower number.")
        else
            print("Congratulations! You guessed the number in " .. attempts .. " attempts.")
            break
        end
    end
end

guessNumber()
