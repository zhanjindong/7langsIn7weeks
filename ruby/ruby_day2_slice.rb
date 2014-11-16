A = (1..16).to_a
 
#使用each
i = 1
A.each do |a|
  if i % 4 == 0
    puts a
  else
    print "#{a} "
  end
  i += 1
end
 
#使用each_slice
A.each_slice(4) do |g|
  puts g.join(" ")
end