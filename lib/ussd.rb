#Nested Conditionals
#Building a USSD for Moringa students & staff to get airtime
#The USSD code is *555#
#Option 1: Student
#Option 2: Staff
#Option 3: Exit
#Student
#If student, ask for student cohort
#Cohort options: 64-68A, 64-68B, 64-68C
#Ask for student name
#Ask student to choose TM Name :Mwikali, Faith, Sam
#Ask student to enter amount
#Print message: "Dear #{studentname}, you have requested #{amount} from #{tmname}. Your request will be processed shortly"
#Staff
#If staff, ask for category:
#Category options: Classroom, General
#Ask for staff name
#Ask staff to enter amount
#Print message: "Dear #{staffname}, you have requested #{amount}. Your request will be processed shortly"


def moringa_airtime
    puts "Please dial *555# to continue"
    ussd = gets.chomp
    if ussd == "*555#"
        puts "Welcome to Moringa Airtime Portal"
        puts "Press 1 for Student"
        puts "Press 2 for Staff"
        puts "Press 3 to Exit"
        option = gets.chomp
        if option == "1"
            puts "Please choose your cohort"
            puts "1. 64-68A"
            puts "2. 64-68B"
            puts "3. 64-68C"
            cohort = gets.chomp.to_i
            if cohort == 1 || cohort == 2 || cohort == 3
                puts "Please enter your name"
                studentname = gets.chomp
                puts "Please choose TM Name"
                puts "1. Mwikali"
                puts "2. Faith"
                puts "3. Sam"
                tmname = gets.chomp.to_i
                if tmname == 1 || tmname == 2 || tmname == 3
                    puts "Please enter amount"
                    amount = gets.chomp
                    puts "Dear #{studentname}, you have requested airtime of #{amount} KSHS. Your request will be processed shortly"
                else
                    puts "Invalid TM Name"
                end
            else
                puts "Invalid cohort"
            end
        elsif option == "2"
            puts "Please enter your category"
            category = gets.chomp
            if category == "Classroom" || category == "General"
                puts "Please enter your name"
                staffname = gets.chomp
                puts "Please enter amount"
                amount = gets.chomp
                puts "Dear #{staffname}, you have requested #{amount}. Your request will be processed shortly"
            else
                puts "Invalid category"
            end
        elsif option == "3"
            puts "Thank you for using Moringa Airtime Portal"
        else
            puts "Invalid option"
        end
    else
        puts "Invalid USSD code"
        puts moringa_airtime 
    end
    
end

puts moringa_airtime


