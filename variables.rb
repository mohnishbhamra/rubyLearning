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