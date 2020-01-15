def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
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

=begin
# modified for step 8 part 5
def input_students
    puts "Please enter the names of the students and birth date, separated by a comma"
    puts "To finish, just hit return twice"
    # create an empty array
    students = []
    # get the first name
    # modified for step 8 part 5
    info = gets.chomp.split(",")
    # while the name is not empty, repeat this code
    while !info.empty? do
        # add the student hash to the array
        # modified for step 8 part 5
        students << {name: info[0], birthday: info[1], cohort: :november}
        puts "Now we have #{students.count} students"
        # get another name from the user
        info = gets.chomp.split(",")
    end
  # return the array of students
  students
end
=end

=begin
# modified for step 8 part 1
def print(students)
    students.each_with_index do |student,  index|
        # modified for step 8 part 3
        if student[:name].to_s.length <= 12
            puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
        end
        # modified for step 8 part 2
        if student[:name].to_s[0] == "A"
            puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
        end
    end
end
=end

=begin
# modified for step 8 part 4
def print(students)
    count = 0
    while count < students.count
        puts "#{students[count][:name]} (#{students[count][:cohort]} cohort)" 
        count += 1
    end
end
=end

=begin
# modified for step 8 part 5
def print(students)
  students.each do |student|
    puts "#{student[:name]}, birth date: #{student[:birthday]} (#{student[:cohort]} cohort)"
  end
end
=end