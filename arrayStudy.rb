arr = Array[1,2,4];
arr1 = [121,22,44];
puts (arr); #automatic traversing :D
puts (arr1); #can use without Array keyword , just like in js:D
arrayWithMultipleDataType = ["can", "have", "multiple values", 345, true ];
#puts("is special array"+arrayWithMultipleDataType); # no implicit conversion of Array into String (TypeError)
puts("is special array"+arrayWithMultipleDataType.to_s()); #works when we convert array to string

#can also access elements by index starting with 0
puts ("first element of arrayWithMultipleDataType is " + arrayWithMultipleDataType[0]);

#can change the value of array as normal
puts("before change"+arr.to_s())
arr[2] = 890
puts("after change"+arr.to_s())

arr[3] = "trying new element addition in array"
puts("after add"+arr.to_s()) #works just like js

ar = [];
arx = Array.new();
puts(ar.to_s()) #empty array just like js but if we dont use to_s() it not gonna print anything on terminal
puts ("is ar equal to arx? "+(ar==arx).to_s());

ar[0]="first element"
ar[5]="space fill from 1st to 4th index"
puts("after s, ar is"+ar.to_s());
puts("length of ar is "+ar.length().to_s());
puts(arr.include? 890)#prints correct true
puts(arr.include? 0)#prints corerct false
puts(arr.include? "new")#prints corerct false
puts(arr.include? "trying new element addition in array")#prints corerct true
puts("arr is "+arr.to_s())
puts("arr is "+ arr.reverse().to_s());
puts("after reversing arr does not remains reversed "+arr.to_s())

ar.sort();
#puts(ar.to_s()); #sort': comparison of NilClass with String failed , basically sort failed as some values in array are null. Even if some values were numeric and some were strings , we could see same error