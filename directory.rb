def input_students
    puts "Please enter the names of the students and cohort, separated by a comma"
    puts "To finish, just hit return twice"
    # create an empty array
    students = []
    # get the first name
    # modified for step 8 part 5
    info = gets.strip.split(", ")
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
        if students.count == 1
          puts "Now we have 1 student"
        else
          puts "Now we have #{students.count} students"
        end
        # get another name from the user
        info = gets.strip.split(", ")
        
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
  if students.count == 1
    puts "Overall, we have no students"
  elsif students.count == 1
    puts "Overall, we have 1 great student"
  else
    puts "Overall, we have #{students.count} great students"
  end
end

=begin
students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
=end

def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end