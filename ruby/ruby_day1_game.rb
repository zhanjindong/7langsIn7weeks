x = rand(10)
print "请猜一个0~9之间的整数："
s = gets
until s.to_i == x
	if s.to_i > x
		print "你猜大啦，请再猜："
	elsif s.to_i < x
		print "你猜小啦，请再猜："
	end
	s = gets
end
print "恭喜你猜对啦！"