arr = Array[1,2,4];
arr1 = [121,22,44];
puts (arr); #automatic traversing :D
puts (arr1); #can use without Array keyword , just like in js:D
arrayWithMultipleDataType = ["can", "have", "multiple values", 345, true ];
#puts("is special array"+arrayWithMultipleDataType); # no implicit conversion of Array into String (TypeError)
puts("is special array"+arrayWithMultipleDataType.to_s()); #works when we convert array to string

#can also access elements by index starting with 0
puts ("first element of arrayWithMultipleDataType is " + arrayWithMultipleDataType[0]);

#can change the value of array as normal
puts("before change"+arr.to_s())
arr[2] = 890
puts("after change"+arr.to_s())

arr[3] = "trying new element addition in array"
puts("after add"+arr.to_s()) #works just like js

ar = [];
arx = Array.new();
puts(ar.to_s()) #empty array just like js but if we dont use to_s() it not gonna print anything on terminal
puts ("is ar equal to arx? "+(ar==arx).to_s());

ar[0]="first element"
ar[5]="space fill from 1st to 4th index"
puts("after s, ar is"+ar.to_s());
puts("length of ar is "+ar.length().to_s());
puts(arr.include? 890)#prints correct true
puts(arr.include? 0)#prints corerct false
puts(arr.include? "new")#prints corerct false
puts(arr.include? "trying new element addition in array")#prints corerct true
puts("arr is "+arr.to_s())
puts("arr is "+ arr.reverse().to_s());
puts("after reversing arr does not remains reversed "+arr.to_s())

# ar.sort();
#puts(ar.to_s()); #sort': comparison of NilClass with String failed , basically sort failed as some values in array are null. Even if some values were numeric and some were strings , we could see same error


puts "----- enumerating array and array like objects------"
a = [2,2,3,4] # Start with an array
puts "a->"+a.to_s
b = a.map {|x| x*x } # Square elements: b is [1,4,9,16]
puts "b->"+b.to_s
c = a.select {|x| x%2==0 } # Select even elements: c is [2,4]
puts "c->"+c.to_s

sum = a.inject do |sum,x| # Compute the sum of the elements => 10
    puts "sum is "+sum.to_s+" , x is "+x.to_s
    sum + x
end

puts sum

mulAns = a.inject do |i,x| # Compute the multiplications of the elements => 10
    puts "ans is "+i.to_s+" , x is "+x.to_s
    i*x
end

puts mulAns


puts "----reducing---"
reductionAnsSUM = a.reduce(:+) #reduction without init value
reductionAnsMultiplication = a.reduce(1,:*) #reduction without init value
reductionAnsMultiplication2 = a.reduce(2,:*) #reduction without init value 2

puts "reductionAnsSUM->"+reductionAnsSUM.to_s
puts "reductionAnsMultiplication->"+reductionAnsMultiplication.to_s
puts "reductionAnsMultiplication2->"+reductionAnsMultiplication2.to_s


p [1, 2, 3] # An array that holds three Fixnum objects
a= [-10...0, 0..10,] # An array of two ranges; trailing commas are allowed
p a
p a[0].class #its a range , not numbers
p [[1,2],[3,4],[5]] # An array of nested arrays
x=2
y=3
a = [x+y,x*y,]
p a

#special arrays
p words = %w[this is a test] # Same as: ['this', 'is', 'a', 'test']
p open = %w| ( [ { < | # Same as: ['(', '[', '{', '<']
p white = %W(\s \t \r \n) # Same as: ["\s", "\t", "\r", "\n"]

p empty = Array.new # []: returns a new empty array
p nils = Array.new(3) # [nil, nil, nil]: new array with 3 nil elements
p zeros = Array.new(4, 0) # [0, 0, 0, 0]: new array with 4 0 elements
p copy = Array.new(nils) # Make a new copy of an existing array
p count = Array.new(3) {|i| i*2} # [0,2,4]: 3 elements computed from index



p a = ('a'..'e').to_a # Range converted to ['a', 'b', 'c', 'd', 'e'] using to_a method
p a[0,0] # []: this subarray has zero elements
p a[1,1] # ['b']: a one-element array
p a[-2,2] # ['d','e']: the last two elements of the array
p a[0..2] # ['a', 'b', 'c']: the first three elements
p a[-2..-1] # ['d','e']: the last two elements of the array
p a[0...-1] # ['a', 'b', 'c', 'd']: all but the last element

a = [1, 2, 3] + [4, 5] # [1, 2, 3, 4, 5]
a = a + [[6, 7, 8]] # [1, 2, 3, 4, 5, [6, 7, 8]]
#a = a + 9 # Error: righthand side must be an array


['a', 'b', 'c', 'b', 'a'] - ['b', 'c', 'd'] # ['a', 'a']

a = [] # Start with an empty array
a << 1 # a is [1]
a << 2 << 3 # a is [1, 2, 3]
a << [4,5,6] # a is [1, 2, 3, [4, 5, 6]]

#Like the String class, Array also uses the multiplication operator for repetition:
a = [0] * 8 # [0, 0, 0, 0, 0, 0, 0, 0]
p a


a = [1, 1, 2, 2, 3, 3, 4]
b = [5, 5, 4, 4, 3, 3, 2]
a | b # [1, 2, 3, 4, 5]: union duplicates are removed
b | a # [5, 4, 3, 2, 1]: union elements are the same, but order is different
a & b # [2, 3, 4] intersection
b & a # [4, 3, 2] intersection

p [1,2,3]==[1,2,3]



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