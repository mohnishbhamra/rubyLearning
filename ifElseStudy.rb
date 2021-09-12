val = 23;
if(val == 23)
    puts("condition matches");
end

# code breaks when we compare number with string
# if(val == 23)
#     puts("condition matches");
# end


if(val == 21)
    puts("condition matches");
else 
    puts("condition didn't matched")
end

#tested with 36,37,38
if(val%3==0)
    puts("number is completely divided by 3 and leaves no remainder");
elsif(val%3==1)
    puts("number is not completely divided by 3 and leaves 1 as remainder");
else
    puts("number is not completely divided by 3 and leaves 2 as remainder");
end



puts("------------------------- combining conditions --------------------")

bulbA = false;
bulbB = false;

if(bulbA && bulbB)
    puts("both bulbs are turned on");
elsif(bulbA &&!bulbB)
    puts("only bulb A is on");
elsif(!bulbA and bulbB) #english and also works
    puts("only bulb B is on");
else
    puts("both bulbs are off");
end

