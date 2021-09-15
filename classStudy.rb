class Person
    attr_accessor :name
    def hiPerson
        puts "hi from Person"
    end
end

class Student < Person
    attr_accessor :age , :marks , :grade

    def initialize(age=nil ,marks=nil,name="no name", grade=nil)
        @name = name
        @age = age
        @grade = grade
    end  

    def hiStudent
        puts "hi from Student"
    end
    
    # def initialize()
    #     puts "normal constructor"
    # end  
end

puts "-----------some statements in file classStudy.rb-----------------"
student1 = Student.new(25,nil,"jason","A");
# student1.name = "jason";
# student1.age = 20; #age is getting assigned from constructor now
# student1.marks = 54;
puts student1.name;
puts student1.age;
puts "marks->"+student1.marks.to_s;


class Professor < Student
    def hiProfessor
        puts "hi from Professor"
    end
end

professorObj = Professor.new(nil,nil,nil,nil); #`initialize': wrong number of arguments (given 0, expected 1..3) 
professorObj.hiProfessor()
