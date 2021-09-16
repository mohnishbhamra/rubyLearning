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


$global_var=10
normal_var=20

class MyClass
    #try to change global_var and normal_var
    def initialize
        puts "initialize of MyClass"
        normal_var=30
        $global_var=30
    end

    #trying to define instance level var
    def instance_var
        @instance_var
    end
    
    def instance_var=(str)
    @instance_var = str
    end

    def static_var
        @@static_var
    end

    def static_var=(str)
        @@static_var = str
        end

end

puts "global_var= "+$global_var.to_s+" normal_var= "+normal_var.to_s
myClassObj = MyClass.new()
puts "global_var= "+$global_var.to_s+" normal_var= "+normal_var.to_s #notice that normal_var value is still 20, meaning scope of normal_var inside MyClass is limited


myClassObj.instance_var = 25;
myClassObj.static_var = 3675;

myClassObj2 = MyClass.new()
myClassObj2.instance_var = 35;
myClassObj2.static_var = 8476;


puts "for obj1 instance var is ->"+myClassObj.instance_var.to_s
puts "for obj2 instance var is ->"+myClassObj2.instance_var.to_s

puts "for obj1 static var is ->"+myClassObj.static_var.to_s
puts "for obj2 static var is ->"+myClassObj2.static_var.to_s


#range
1..3 # All x where 1 <= x <= 3
1...3 # All x where 1 <= x < 3

puts "-----------type casting---------"
varA = Integer(1.34)
puts varA
puts varA.class

varA = Integer("2")
puts varA
puts varA.class


# varA = Integer("2.4") #exception
# puts varA
# puts varA.class

varA = Float("2.4")
puts varA
puts varA.class


varA = Integer(Float("2.4"))
puts varA
puts varA.class

# varA = Numeric("2.7") #exception
# puts varA
# puts varA.class


billion = 1_000_000_000
billionLong = 1000000000
if billion==billionLong then 
    puts "equal" 
else 
    puts "unequal"
end


puts -(7/3)
puts -7/3

p 4**3**2

x=64
p x**4 # This is the same thing as x*x*x*x
p x**-1 # The same thing as 1/x
p x**(1/3.0) # The cube root of x
p x**(1/4) # Oops! Integer division means this is x**0, which is always 1
p x**(1.0/4.0) # This is the fourth-root of x

p "---------"
a = 0.4 - 0.3 
b = 0.1 # Evaluates to false in most implementations

p a
p b
p a==b

axc =  # This assignment is never executed
p axc #prints nil and doesnt give NoName error