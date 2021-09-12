#defination of method sayHello
def sayHello
    puts "i am saying hello from the method sayHello"
end

#calling of method sayHello
sayHello()

#method with args, here sayHello gets redefined just like in JS
def sayHello(name)
    if(name!=nil)
        puts ("hello "+name);
    end
end

sayHello("beauty");

#sayHello();# code breaks as args is not given, Error= wrong number of arguments

#redefining method with deafault args this time
def sayHello(name="defaultName")
    if(name!=nil)
        puts ("hello "+name);
    end
end

sayHello("james");
sayHello(); #works as this time we have default args in place while defining method

def addTwoNumbers(num,anotherNum)
    sum = num+anotherNum;
    printf("sum after adding %d and %d is %d \n",num,anotherNum,sum); #printf works same like c
end

addTwoNumbers(2,34);


def makeSquare(num1)
    return num*num; #just like js , method defination doesn't has to contain any return datatype
end


def giveMultipleValues()
    #if we use return and some commas, return type becomes array automatically
    return "val1",2;
end

returnValues = giveMultipleValues();
puts ("calling giveMultipleValues returns array->"+returnValues.to_s());
