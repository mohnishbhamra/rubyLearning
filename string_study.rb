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
