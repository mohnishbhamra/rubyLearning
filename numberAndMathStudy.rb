num =  7
double_num = 7.9
negative_num = -42.2
puts 5-90 #basic add/sub
puts 5/2 #basic div
puts 5*2 #basic mul
puts "------------"
puts 5^2 #power doesn't work like that 
puts 5**2 #power works like that 
#puts 5***2 and cube doesn't works like this lol
puts 15%9 #normal mod
var7 = 7
#puts ("my fav number is "+var7) brings error as we have to typecase numeric 7 to string
puts ("my fav number is "+var7.to_s()) #works as 7 is now string due to to_s() method

puts "------------playing with math functions------------"
num = num*-1
puts num
puts num.abs()
num = 20.124
puts ("round 20.124->"+num.round().to_s())
puts ("ceil->"+num.ceil().to_s())
puts ("floor ->"+num.floor().to_s())
num = 20.724
puts ("round 20.724->"+num.round().to_s())

puts Math.sqrt(25)
puts Math.log(0)

puts 1+7
puts 1+7.0 #prints 8.0 , number got boxed
puts 1/7 #prints 0
puts 1/7.0 #prints 0.14285714285714285


num_in_string = "54"
after_op = num_in_string*4; #this will have 54545454 in place
after_op_num = num_in_string.to_i()*4; #this will do correct multiplication, ans will be 216
puts ("after operation on string, num is "+after_op) 
print ("after operation on converted string, num is ") ; puts (after_op_num.to_s())