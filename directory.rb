def input_students
    puts "Please enter the names of the students and cohort, separated by a comma"
    puts "To finish, just hit return twice"
    # create an empty array
    students = []
    # get the first name
    # modified for step 8 part 5
    info = gets.chomp.split(",")
    # while the name is not empty, repeat this code
    while !info.empty? do
        # add the student hash to the array
        # modified for step 8 part 7
        if info[1] == nil
            #puts "please supply a cohort also"
            #info = gets.chomp.split(",")
            info[1] = "november"
        end
        students << {name: info[0], cohort: info[1]}
        puts "Now we have #{students.count} students"
        # get another name from the user
        info = gets.chomp.split(",")
        
    end
  # return the array of students
  students
end
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)