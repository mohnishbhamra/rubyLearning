# load "./testModule.rb"
# load "./testModule.rb"
# require "./testModule.rb"
require "./testModule.rb"
# include TestModule
# extend TestModule
load "./classStudy.rb"
class TestClass < Professor
    # include TestModule
    # extend TestModule
    def classMethod
        puts "classMethod"
    end
end

# some_method_of_TestModule()

testClassObj = TestClass.new();
testClassObj.hiStudent();
testClassObj.hiPerson();
testClassObj.hiProfessor();
#works only within usage of include of a moudle inside a class defination
# testClassObj.some_method_of_TestModule();

#works only within usage of extend of a moudle inside a class defination
# TestClass.some_method_of_TestModule();

=begin
conclusion
load -> brings all code from some module and runs it. can pick dynamic changes from file(when file content changes in between)
require -> brings all code from some module in memory and runs it , meaning if you require twice its only going to adhere 1st require. cannot pick running changes in content of file as require places the code in memory first.
include-> can include a module and afterwards you can execute any method etc..
extend -> where include was working as instance methods , extends brings functionality to class ~ static in java
we can use both include and extend inside class def or anywhere
< -> is used to inherit other class, not i even tried to inherit module but that doesn't works!
=end
