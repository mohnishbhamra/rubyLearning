road = ["mall road", "town road", "30 feet road" , "sloppy slope" , "down the hills" , "straight"]

#foreach
def forEachLoop(collectionData)
    for entry in collectionData
        puts "type of road is ->"+ entry
    end
end


def forEachLoopFancyStyle1(collectionData)
    collectionData.each do |entryData|
        puts "in fancy style 1, type of road is ->"+ entryData
    end
end



def forEachLoopFancyStyle2(collectionData)
    lastIndex = collectionData.length()-1;
    for index in 0..lastIndex do  # or we could do like,  for index in 0..collectionData.length()-1 do 
        puts "in fancy style 2, type of road is ->" + collectionData[index]
    end
end

def doWhileLoop(collectionData)
    index = 0;
    loop do # normal do..while is not present in ruby. use "loop do" to have do while loop using break condition inside
        puts "in doWhileLoop, type of road is ->" + collectionData[index];
        index += 1;
        if(index>=collectionData.length())
            break
        end
    end
end

def whileLoop(collectionData)
    index = 0;
    while index<collectionData.length()
        puts "in whileLoop, type of road is ->" + collectionData[index];
        index += 1;        
    end
end

#until loop is just opposite of while loop. while loop executes statement till statements is true and until executes statement till its false
def untilLoop(collectionData)
    index = 0;
    until index>=collectionData.length()
        puts "in untilLoop, type of road is ->" + collectionData[index];
        index += 1;        
    end
end


def specialLoopTimes (count)
    count.times do |indexVarName|
        puts ("calling specialLoopTimes for time T="+indexVarName.to_s());
    end
    #note that here indexVarName var is init with 0 val and goes upto count-1 val, meaning loop actually runs count times
end


def specialLoopUpto (count)
    1.upto(count) do |indexVarName|
        puts ("calling specialLoopUpto for time T="+indexVarName.to_s());
    end
    #note that here indexVarName var is init with 0 val and goes upto count-1 val, meaning loop actually runs count times
end

=begin rdoc
=This function shows how to write loop from down to supplied value
=end
def specialLoopDownto (count)
    count.downto 0 do |indexVarName|
        puts ("calling specialLoopDownto for time T="+indexVarName.to_s());
    end
    #note that here indexVarName var is init with 0 val and goes upto count-1 val, meaning loop actually runs count times
end

=begin
#using begin and end makes comment block
forEachLoop(road);
forEachLoopFancyStyle1(road);
forEachLoopFancyStyle2(road);
doWhileLoop(road);
whileLoop(road);
untilLoop(road);
specialLoopTimes(5);
specialLoopUpto(5);
=end

specialLoopDownto(5);

BEGIN{
    puts "this block runs first before anything "    
}



x = 0 # Initialize loop variable
puts x = x + 1 while x < 10 # Output and increment in a single expression

a = [1,2,3] # Initialize an array
puts a.pop until a.empty? # Pop elements from array until empty

#exp gets executed first u know
x=10
puts x = x-1  until x==0

#perfect do while loop example, however it is discouraged to use unitll or while as modifiers in multiple lines
x = 10 # Initialize loop variable
begin # Start a compound expression: executed at least once
puts x # output x
x = x - 1 # decrement x
end until x == 0 # End compound expression and modify it with a loop



__END__
puts "we can't reach here as we have __END__ above"
