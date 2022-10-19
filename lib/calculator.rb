# Enter numbers and operand
puts "Please enter (+,-,*,/) to perform the operation"
operand = gets.chomp
puts "Please enter the first number"
first_number = gets.to_f
puts "Please enter the second number"
second_number = gets.to_f
answer = case operand
when "+"
    first_number + second_number
when "-"
    first_number - second_number
when "*"
    first_number * second_number
when "/"
    first_number / second_number
else
    "Invalid operator"
end

puts "#{first_number}#{operand} #{second_number} = #{answer}"

# Equation
puts "Please enter your equation eg. 2 + 2"
equation = gets.chomp
answer = eval(equation)
puts "Your answer is #{answer}"

