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