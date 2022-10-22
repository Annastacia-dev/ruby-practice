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
                    puts "Dear #{studentname}, you have requested KSH #{amount} of airtime. Your request will be processed shortly"
                else
                    puts "Invalid TM Name"
                end
            else
                puts "Invalid cohort"
            end
        elsif option == "2"
            puts "Please choose your category"
            puts "1. Classroom"
            puts "2. General"
            category = gets.chomp.to_i
            if category == 1 || category == 2
                puts "Please enter your name"
                staffname = gets.chomp
                puts "Please enter amount"
                amount = gets.chomp
                puts "Dear #{staffname}, you have requested KSH #{amount} of airtime. Your request will be processed shortly"
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


