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
