#non-discrete range as floating class might not have implemented succ method
r1= 1.0..10.0
p r1.to_a

#discrete range
r2= 1..10
p r2.to_a

1..3.to_a # Tries to call to_a on the number 3
(1..3).to_a # => [1,2,3]


p "ZZZ".succ

r = 0...100 # The range of integers 0 through 99
r.member? 50 # => true: 50 is a member of the range
r.include? 100 # => false: 100 is excluded from the range
r.include? 99.9 # => true: 99.9 is less than 100


p triples = "AAA".."ZZZ"
p triples.include? "ABC" # true; fast in 1.8 and slow in 1.9
p triples.include? "ABCD" # true in 1.8, false in 1.9 as 1.9 does descrete test
p triples.cover? "ABCD" # true and fast in 1.9 ~since 1.8 used to behave true for this in include, ruby has to bring this function in 1.9 for continous mempership test
p triples.to_a.include? "ABCD" # false and slow in 1.8 and 1.9

(1..10).each {|x| print x if x==3..x==5 } #x==3..x==5 is flip-flop when used in if or while loops etc