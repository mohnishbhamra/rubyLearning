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
puts "AA".casecmp "a" #returns int
puts "aa".casecmp "b" #returns int

s = 'hello'; # Ruby 1.9
s[0] # 'h': the first character of the string, as a string
s[s.length-1] # 'o': the last character 'o'
s[-1] # 'o': another way of accessing the last character
s[-2] # 'l': the second-to-last character
s[s.length] # nil: there is no character at that index

#get the substring - first operand specifies an index (which may be negative), and the second specifies a length (which must be nonnegative).
s = "hello"
s[0,2] # "he"
s[-1,1] # "o": returns a string, not the character code ?o
s[0,0] # "": a zero-length substring is always empty
s[0,10] # "hello": returns all the characters that are available
s[s.length,1] # "": there is an empty string immediately beyond the end
s[s.length+1,1] # nil: it is an error to read past that
s[0,-1] # nil: negative lengths don't make any sense

s = "hello"
s[0,1] = "H" # Replace first letter with a capital letter
puts s
s[s.length,0] = " world" # Append by assigning beyond the end of the string
puts s
s[5,0] = "," # Insert a comma, without deleting anything
puts s
s[5,6] = "" # Delete with no insertion; s == "Hellod"
puts s

#sub string manipulation with Range
s = "hello"
s[2..3] # "ll": characters 2 and 3
s[-3..-1] # "llo": negative indexes work, too
s[0..0] # "h": this Range includes one character index
s[0...0] # "": this Range is empty
s[2..1] # "": this Range is also empty
s[7..10] # nil: this Range is outside the string bounds
s[-2..-1] = "p!" # Replacement: s becomes "help!"
s[0...0] = "Please " # Insertion: s becomes "Please help!"
s[6..10] = "" # Deletion: s becomes "Please!"

#string indexing can be done with string as well, meaning it finds given substring in string
s = "hellGGo" # Start with the word "hello"

while(s["l"]) # While the string contains the substring "l"
s["l"] = "L"; # Replace first occurrence of "l" with "L"
end # Now we have "heLLo"

s['L']="changed"
puts s

s['L'] = "Yeah"
puts s

s['GG'] =""
puts s

ans = ["ant", "bear", "cat"].all? { |word| word.length >= 3 } #=> true
p ans
ans = ["ant", "bear", "cat"].all? { |word| word.length >= 4 } #=> false
p ans