# Exercises: Medium 1 / Question #5

# divisors = []
# number = ''

# loop do
#     puts "=> insert a number for factoring:"
#     number = gets.chomp.to_i
#     break unless number <= 0
# end

# dividend = number

# while dividend > 0
#     divisors << number / dividend if number % dividend == 0
#     dividend -= 1
# end

# p divisors

# Exercises: Medium 1 / Question #7

# limit = 15

# def fib(first_num, second_num, limit)
#   while second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1, 15)
# puts "result is #{result}"

# Exercises: Medium 1 / Question #8

# def titleize(statement)
#   new_stmt = []
#   statement.split().each {|word| new_stmt << word.downcase.capitalize}
#   new_stmt.join(' ')
# end

# puts titleize("Captain america, is THE beSt superhero of All tIME")

# Exercises: Medium 1 / Question #9

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, value|
#   case munsters[name]["age"]
#   when (0..17)
#     munsters[name]["age_group"] = "kid"
#   when (18..64)
#     munsters[name]["age_group"] = "adult"
#   else
#     munsters[name]["age_group"] = "senior"
#   end
# end

# puts munsters

# Exercises: Medium 2 / Question #1

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" }
# }

# sum = 0
# munsters.each do |key, value|
#   sum += value["age"] if value["gender"] == "male"
# end

# puts sum 

# Exercises: Medium 2 / Question #2

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, value|
#   puts "#{name} is a #{value["age"]} year old #{value["gender"]}"
# end

# Exercises: Medium 2 / Question #3

# def not_so_tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param += ["rutabaga"]
#   return a_string_param, an_array_param
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# my_string, my_array = not_so_tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"  

# Exercises: Medium 3 / Question #1

# def fun_with_ids
#   a_outer = 42
#   b_outer = "forty two"
#   c_outer = [42]
#   d_outer = c_outer[0]

#   a_outer_id = a_outer.object_id
#   b_outer_id = b_outer.object_id
#   c_outer_id = c_outer.object_id
#   d_outer_id = d_outer.object_id

#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block.\n\n"

#   1.times do
#     a_outer_inner_id = a_outer.object_id
#     b_outer_inner_id = b_outer.object_id
#     c_outer_inner_id = c_outer.object_id
#     d_outer_inner_id = d_outer.object_id

#     puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block."
#     puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block."
#     puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block."
#     puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block.\n\n"

#     a_outer = 22
#     b_outer = "thirty three"
#     c_outer = [44]
#     d_outer = c_outer[0]

#     puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
#     puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
#     puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
#     puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after.\n\n"


#     a_inner = a_outer
#     b_inner = b_outer
#     c_inner = c_outer
#     d_inner = c_inner[0]

#     a_inner_id = a_inner.object_id
#     b_inner_id = b_inner.object_id
#     c_inner_id = c_inner.object_id
#     d_inner_id = d_inner.object_id

#     puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
#     puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
#     puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
#     puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer).\n\n"
#   end

#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block.\n\n"

#   puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
#   puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
#   puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
#   puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block.\n\n" rescue puts "ugh ohhhhh"
# end

# fun_with_ids

# Exercises: Medium 3 / Question #2

# def fun_with_ids
#   a_outer = 42
#   b_outer = "forty two"
#   c_outer = [42]
#   d_outer = c_outer[0]

#   a_outer_id = a_outer.object_id
#   b_outer_id = b_outer.object_id
#   c_outer_id = c_outer.object_id
#   d_outer_id = d_outer.object_id

#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block."
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block."
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block."
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block.\n\n"

#   an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)


#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the method call."
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the method call."
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the method call."
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the method call.\n\n"

#   puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
#   puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
#   puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
#   puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the method.\n\n" rescue puts "ugh ohhhhh"
# end


# def an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)
#   a_outer_inner_id = a_outer.object_id
#   b_outer_inner_id = b_outer.object_id
#   c_outer_inner_id = c_outer.object_id
#   d_outer_inner_id = d_outer.object_id

#   puts "a_outer id was #{a_outer_id} before the method and is: #{a_outer.object_id} inside the method."
#   puts "b_outer id was #{b_outer_id} before the method and is: #{b_outer.object_id} inside the method."
#   puts "c_outer id was #{c_outer_id} before the method and is: #{c_outer.object_id} inside the method."
#   puts "d_outer id was #{d_outer_id} before the method and is: #{d_outer.object_id} inside the method.\n\n"

#   a_outer = 22
#   b_outer = "thirty three"
#   c_outer = [44]
#   d_outer = c_outer[0]

#   puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
#   puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
#   puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
#   puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after.\n\n"


#   a_inner = a_outer
#   b_inner = b_outer
#   c_inner = c_outer
#   d_inner = c_inner[0]

#   a_inner_id = a_inner.object_id
#   b_inner_id = b_inner.object_id
#   c_inner_id = c_inner.object_id
#   d_inner_id = d_inner.object_id

#   puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the method (compared to #{a_outer.object_id} for outer)."
#   puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the method (compared to #{b_outer.object_id} for outer)."
#   puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the method (compared to #{c_outer.object_id} for outer)."
#   puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the method (compared to #{d_outer.object_id} for outer).\n\n"
# end

# fun_with_ids
