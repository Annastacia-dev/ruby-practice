students_grades = {
    'John':[30, 35, 41],
    'Jane':[80, 90, 100],
    'Jack':[60, 50, 60]
}
def check_grade (students_hash)
    students_hash.each do |key, value|
        
        grade = value.sum/value.length
       
        if grade >60
            puts "#{key} has passed"
        elsif grade >50 && grade <59
            puts "#{key} has passed on probation"
        else
            puts "#{key} has failed"
        end
    end
end

check_grade(students_grades)