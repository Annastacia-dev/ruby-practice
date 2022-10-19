require 'prime'

# check if number is a prime number built-in method

def is_prime (number)
   if Prime.prime?(number)
        puts "The number #{number} is a prime number"
     else
        puts "The number #{number} is not a prime number"
     end
end

puts is_prime(5)

# check if number is a prime number using while loop

def check_prime (number)
    i = 2
    while i < number
        if number % i == 0
            return "The number #{number} is not a prime number"
        end
        i += 1
    end
    return "The number #{number} is a prime number"
end

puts check_prime(5)

# check if number is a prime number using if conditionals

def is_number_prime (number)
    if (number >2 && number % 2 == 0 || number % 3 == 0)
        "The number #{number} is not a prime number"
    else
        "The number #{number} is a prime number"
    end
end

puts is_number_prime(6)
puts is_number_prime(5)

