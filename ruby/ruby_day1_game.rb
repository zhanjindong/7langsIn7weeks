x = rand(10)
print "���һ��0~9֮���������"
s = gets
until s.to_i == x
	if s.to_i > x
		print "��´��������ٲ£�"
	elsif s.to_i < x
		print "���С�������ٲ£�"
	end
	s = gets
end
print "��ϲ��¶�����"