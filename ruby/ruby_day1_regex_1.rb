string = this is my phone number (123) 555-1234.do you remember?
phone = /\((\d{3})\)\s+(\d{3})-(\d{4}))/
#匹配是从外到内，从左到右
m = phone.match(string)
puts m[0]
puts m.captures[0]
 
puts m[1]
puts m.captures[1]
 
puts m[2]
puts m.captures[2]
 
puts m[3]
 
puts m.pre_match
puts m.post_match
 
#(123) 555-1234子串的开始索引
puts m.begin(0)
#123子串的
puts m.begin(1)
#555子串的
puts m.begin(2)
#1234子串的
puts m.begin(3)
#1234子串的结束索引
puts m.end(3)
 
#OutPut:
#(123) 555-1234
#123
 
#123
#555
 
#555
#1234
 
#1234
 
#this is my phone number
#.do you remember?
 
#24
#25
#30
#34
#38