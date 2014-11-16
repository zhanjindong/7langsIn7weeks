def grep(file,keyword)
	#这里必须是单引号
	r = Regexp.new('\b'+keyword+'\b')
	File.open(file,"r") do |f|
		f.each_line do |line|
			if r.match(line)
				puts f.lineno.to_s + " " +line
			end
		end
	end
end
 
grep"test.txt","test"
 
#tar = ARGV.shift
#ARGF.each_with_index { |l, i| puts "#{ARGF.filename} #{i} : #{l}" if /#{tar}/.match(l) }
#tar "test.txt"