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


#forEachLoop(road);
#forEachLoopFancyStyle1(road);
#forEachLoopFancyStyle2(road);
# doWhileLoop(road);
# whileLoop(road);
#untilLoop(road);
specialLoopTimes(5);





