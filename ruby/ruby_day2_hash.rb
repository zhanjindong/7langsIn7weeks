def tell_the_truth(options={})
	if options[:expression] == :lawyer
		puts 'if could be believed that this is almost certainly not false.'
	else
		true
	end
end
 
ret = tell_the_truth
puts ret #output true
tell_the_truth :expression => :lawyer
puts ret #output true ruby求职将字符串也当true处理。