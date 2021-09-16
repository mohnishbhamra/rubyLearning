map = {
    "key1"=>"value 1",
    "key2"=>"value 2",
    "key3"=>"value 3",
    12=>"value 12"
}

puts(map);
puts ("specific key value from map is "+ map["key2"]);
#puts ("specific key value from map is "+ map["randomKey"]); #code broke as the value is nil
puts(map[12]);


h = { # A hash that maps number names to digits
:nil => 1, # The "arrows" show mappings: key=>value
:two => 2 # The colons indicate Symbol literals
}

puts "one's val"+h[:one].to_s # => 1. Access a value by key
puts h[:three] = 3 # Add a new key/value pair to the hash
h.each do |key,value| # Iterate through the key/value pairs
print "#{key}:#{value}; " # Note variables substituted into string called as string interpolation.
end

# This hash will map the names of digits to the digits themselves
numbers = Hash.new # Create a new, empty, hash object
numbers["one"] = 1 # Map the String "one" to the Fixnum 1
numbers["two"] = 2 # Note that we are using array notation here
numbers["three"] = 3
sum = numbers["one"] + numbers["two"] # Retrieve values like this