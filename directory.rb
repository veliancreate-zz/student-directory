def input_students
  puts "Please enter the name and place of birth of the students"
  puts "To finish, just hit return thrice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  place = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? && !place.empty? do    
    # add the student hash to the array
    students << {:name => name, :cohort => :november, :place=>place}    
    puts "Now we have #{students.length} students"
    # get another name from the user
    name = gets.chomp
    place = gets.chomp
  end
  # return the array of students
  students
end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print(students)
  i=0
  while i<students.length
  	puts "#{i+1}. #{students[i][:name]}, #{students[i][:place]} (#{students[i][:cohort]} cohort)"
  	i+=1
  end	
end

def print_footer(students)
  puts "Overall, we have #{students.length} great students"
end 
#nothing happens until we call the methods
students = input_students
print(students)
print_footer(students)