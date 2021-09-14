#try catch is begin rescue

arr = ["place" ,"city" , "house"];

#arr["place"] actually it is not a map so error
begin
arr["place"]
rescue
    puts "some handling of exception"
end
