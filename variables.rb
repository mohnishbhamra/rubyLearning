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
# POSSIBLE =  #uninitialized constant POSSIBLE (NameError), we can't play wid constant as we did with vars
# p POSSIBLE


puts "-----------Ambiguous test in var------------"
class Ambiguous
    def x; p"in function x and returning val 1"; return 1; end # A method named "x". Always returns 1
    def test
    p x # No variable has been seen; refers to method above: prints 1
    # The line below is never evaluated, because of the "if false" clause. But
    # the parser sees it and treats x as a variable for the rest of the method.
    x = 0 if false
    p x # x is a variable, but has never been assigned to: prints nil
    x = 2 # This assignment does get evaluated
    p x # So now this line prints 2
    end
end

Ambiguous.new.test


sample_ar = sample_ar || []
p sample_ar



#assignment misc
x = 1, 2, 3 # x = [1,2,3]
p x

x, = 1, 2, 3 # x = 1; other values are discarded
p x


x, y, z = [1, 2, 3] # Same as x,y,z = 1,2,3
p x
p y
p z

x = [1,2] # x becomes [1,2]: this is not parallel assignment
p x
x, = [1,2] # x becomes 1: the trailing comma makes it parallel
p x


x, y, z = 1, 2 # x=1; y=2; z=nil

x, y = 1, 2, 3 # x=1; y=2; 3 is not assigned anywhere
#splat operator
x, y, z = 1, *[2,3] # Same as x,y,z = 1,2,3

# When an lvalue is preceded by an asterisk, it means that all extra rvalues should be placed into an array and assigned to this lvalue. 
# The value assigned to that lvalue is always an array, and it may have zero, one, or more elements:
x,*y = 1, 2, 3 # x=1; y=[2,3]
x,*y = 1, 2 # x=1; y=[2]
x,*y = 1 # x=1; y=[]
# Ruby 1.9 only
*x,y = 1, 2, 3 # x=[1,2]; y=3
*x,y = 1, 2 # x=[1]; y=2
*x,y = 1 # x=[]; y=1

# splats may appear on both sides of a parallel assignment expression:
x, y, *z = 1, *[2,3,4] # x=1; y=2; z=[3,4].

#left hand side splat comes to very last
a,*b,c,d = [1,2,3,4],[1,[2,[3,4]]]
p a
p b
p c
p d

puts((x,y=1,2))

#reason why you should use and instead of &&
defined? a and defined? b # This works
defined? a && defined? b # Evaluated as: defined?((a && defined? b))