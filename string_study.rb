name = "my name is"
puts (name)

name = name + " slimshady"
puts (name)

puts  ("name in caps can be done as "+ name.upcase() )
puts ("both kind of invocation works " + name.upcase)

new_str = "asd asdasdas      asd         "
puts (new_str.strip()+"test")
puts (new_str.length())
puts (new_str.include? "das") #puts (new_str.include ? "das")  doesn't works , puts (new_str.include("das")) doesn't works either

puts (name[0] + " is first char")
puts (name[1] + " is second char")
puts (name[1,5] + " ,is range of chars")

firstIndexOfI = name.index('i')
puts ("first index of 'i' is "+ firstIndexOfI.to_s ) #to_s converts num to string

string_slim = "slim"
firstIndexOfSubString = name.index(string_slim)

puts ("first index of string-"+string_slim+ "->"+ firstIndexOfSubString.to_s ) #to_s converts num to string

puts ("WORKING DIECRTLY WITH STRINGS".downcase())


for i in 1..5
    s=String.new "stringVal"
    puts "object_id of #{s} is-> #{s.object_id}"
end


s=String.new "will be frezzed"
puts "last val of s is #{s}"
s.freeze #once frozen , object can't be unfreezed
puts "is frozen #{s.frozen?}"


$salutation = 'hello' # Define a global variable
p "#$salutation world" # Use it in a double-quoted string
p "#{$salutation} world2" # normal interpolation also works
p "My phone #: 555-1234" # No escape needed



msg = "hey, Use \#{ to interpolate expressions"
puts msg #clean msg
p msg #shows \ with #

msg = "This string literal
has two lines \
but is written on three"

puts msg
p msg

puts "\u0aaf"


document = <<HERE # This is how we begin a here document



This is a string literal.
It has 3 lines and abruptly ends...
line three
HERE

puts document


puts `ls` #BACKTICKS CAN execute commands

puts ?A #single character, it is not a string
puts ?" #for "
puts ?? #for ?
#altough we have char in ruby like above but rudy does not have a special class to represent single characters


#This operator is very different from +; it alters the lefthand operand rather than creating and returning a new object:
greeting = "Hello"
greeting << " " << "World"
puts greeting # Outputs "Hello World"

puts "za">"aaa" #string can be compared as per normal sorting basis