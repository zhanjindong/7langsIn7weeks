A = (1..16).to_a
 
#ʹ��each
i = 1
A.each do |a|
  if i % 4 == 0
    puts a
  else
    print "#{a} "
  end
  i += 1
end
 
#ʹ��each_slice
A.each_slice(4) do |g|
  puts g.join(" ")
end