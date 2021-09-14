#try catch is begin rescue

arr = ["place" ,"city" , "house"];

#arr["place"] actually it is not a map so error
begin
# arr["place"]
puts "working line"
special_zero =  10/0
arr["place"] #this won't execute as exception caught in prev line
rescue ZeroDivisionError => error
    puts "catching just zero division error"
    puts error.to_s()
rescue =>e
    puts "some handling of exception" + e.to_s()
end
