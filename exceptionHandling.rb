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


# rescue As a Statement Modifier
p y = factorial(x) rescue 4

#else , ensure
def method_name(x)
    # The body of the method goes here.
    # Usually, the method body runs to completion without exceptions
    # and returns to its caller normally.
    rescue
    # Exception-handling code goes here.
    # If an exception is raised within the body of the method, or if
    # one of the methods it calls raises an exception, then control
    # jumps to this block.
    else
    # If no exceptions occur in the body of the method
    # then the code in this clause is executed.
    ensure
    # The code in this clause is executed no matter what happens in the
    # body of the method. It is run if the method runs to completion, if
    # it throws an exception, or if it executes a return statement.
    end