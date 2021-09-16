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

    alias helloProfessor hiProfessor #same methods functionality with diff name
end

professorObj = Professor.new(nil,nil,nil,nil); #`initialize': wrong number of arguments (given 0, expected 1..3) 
professorObj.hiProfessor()
professorObj.helloProfessor() #used alias



class_obj=4; 
#and
class_obj=(4); 
#are same

a = Person.new
puts "person id is #{a.object_id}"
p a.instance_of? Person
p a.class == Person

p professorObj.is_a? Person #checks inheritence
p Person === professorObj # another way to check if professorObj is a Person but vice versa professorObj === Person is not true
p professorObj === Student #false
p Student === professorObj #true 

#equal? method check for reference for eqaulity
a = "Ruby" # One reference to one String object
b = c = "Ruby" # Two references to another String object
a.equal?(b) # false: a and b are different objects
b.equal?(c) # true: b and c refer to the same object
# By convention, subclasses never override the equal? method.

a.object_id == b.object_id # Works like a.equal?(b)

#== is diff which check for identical values
a == b # true: but these two distinct objects have equal values

#eql? is strict compare like ===
p 1 == 1.0 # true: Fixnum and Float objects can be ==
p 1.eql?(1.0) # false: but they are never eql!