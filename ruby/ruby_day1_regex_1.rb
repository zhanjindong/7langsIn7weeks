string = this is my phone number (123) 555-1234.do you remember?
phone = /\((\d{3})\)\s+(\d{3})-(\d{4}))/
#ƥ���Ǵ��⵽�ڣ�������
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
 
#(123) 555-1234�Ӵ��Ŀ�ʼ����
puts m.begin(0)
#123�Ӵ���
puts m.begin(1)
#555�Ӵ���
puts m.begin(2)
#1234�Ӵ���
puts m.begin(3)
#1234�Ӵ��Ľ�������
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