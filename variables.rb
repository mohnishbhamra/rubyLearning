string_age = "34"
string_name = "roy"
numeric_age = 34
double_gpa = 9.0
is_male = true
flaws = nil #works like null
puts (string_name + " is " + string_age + " years old");
# puts (string_name + " is " + numeric_age + " years old"); //

puts true.class


puts "----Assignment---"
x, y = 1, 2 # Same as x = 1; y = 2
puts "x->"+x.to_s+" ,y->"+y.to_s
x, y = y, x # Swap the value of two variables
puts "x->"+x.to_s+" ,y->"+y.to_s
x,y,z = [1,2,3] # Array elements automatically assigned to variables
puts "x->"+x.to_s+" ,y->"+y.to_s+" ,z->"+z.to_s


# Define a method to convert Cartesian (x,y) coordinates to Polar
def polar(x,y)
    theta = Math.atan2(y,x) # Compute the angle
    r = Math.hypot(x,y) # Compute the distance
    [r, theta] # The last expression is the return value
end

# Here's how we use this method with parallel assignment
distance, angle = polar(2,2)

puts "distance->"+distance.to_s+", angle->"+angle.to_s