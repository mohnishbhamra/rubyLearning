#run this file on cmd or terminal using "ruby fileName.rb" to take inputs from user
puts ("enter your age")
age = gets()
puts ("you enterred->"+age)
name = gets()
puts ("you enterred your name as ->"+name+". Cool!") #by running this line , we came to know that gets even takes enter(new line or /n) as input as well
puts ("we can chop of extra stuff by using chomp or strip") 
puts ("after strip your name as ->"+name.strip()+". Cool!")
puts ("after chomp your name as ->"+name.strip()+". Cool!")
