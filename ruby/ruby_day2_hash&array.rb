#hash to array
hash = {"a"=>"str1","b"=>"str2"}
#hash.methods.each{|e| puts e.to_s}
#puts hash.methods.select{|e| e.to_s.include?'to'}
 
puts arr = hash.to_a
#puts arr.methods.select{|e| e.to_s.include?'hash'}
 
#array to hash
#case1
#the count of a must be even
a = ["item 1", "item 2", "item 3", "item 4"]
h = Hash[*a] # => { "item 1" => "item 2", "item 3" => "item 4" }
puts h
 
#case2
h = Hash[a.each_slice(2).to_a]
puts h
 
#case3
arr = [[1, 2], [3, 4]]
a = arr.inject({}) do |r, s|
  r.merge!({s[0] => s[1]})
end # => { 1 => 2, 3 => 4 }
puts a
 
#case 4
h = Hash[*arr]
puts h