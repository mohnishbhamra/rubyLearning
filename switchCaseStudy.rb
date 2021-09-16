def whatDayIsIT (abrivation)
    fullDayName = nil;
    
    case abrivation
    when "mon"
        fullDayName = "Monday"
    when "tue"
        fullDayName = "Tuesday"
        print("do we need break here if this case doesn't get its run")
    when "wed"
        fullDayName = "Wednesday"
    else         
        fullDayName = "we dont have any other days apart from mon tue wed :D lol"
    end

    return fullDayName
end


def switchSomething(data)
    case data
    when 1..5 #inclusive between like [1,5]
      puts "It's between 1 and 5"
    when 6
      puts "It's 6"
    when "foo", "bar"
      puts "It's either foo or bar"
    when String #String class
      puts "You passed a string"
    else
      puts "You gave me #{data} -- I have no idea what to do with that."
    end
end

#puts whatDayIsIT("wed");
switchSomething("foot")

x=1,y=1
case
when x == 1 , y == 0 then p "x is one or y is zero" # Obscure syntax
when x == 2 || y == 1 then p "x is two or y is one" # Easier to understand
end