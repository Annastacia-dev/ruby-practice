#Write a method in Ruby that takes a string as a parameter such that if the given string is a palindrome it returns true. Otherwise, return false.
#A palindrome is a word or sentence that's spelled the same way both forward and backward, ignoring punctuation, case, and spacing.

def check_palindrome(word)
   #remove spaces and special characters
    word = word.downcase.gsub(/[^0-9A-Za-z]/, '')
    if word.length == 1
        return true
    elsif word[0] == word[-1]
        check_palindrome(word[1..-2])
    else
        return false
    end
end

puts check_palindrome("A man, a plan, a canal – Panama")


