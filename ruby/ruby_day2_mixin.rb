module ToFile
	def filename
		"object_#{self.object_id}.txt"
	end
 
	def to_f
		File.open(filename,"w") {|f| f.write(to_s)}
	end
end
 
class Person
	include ToFile
	attr_accessor :name
 
	def initialize(name)
		@name = name
	end
 
	def to_s
		name
	end
 
	#静态方法
	def self.Test
		puts "static method!"
	end
	#或者
	class << self
		def Test2
			puts "static method2!"
		end
	end
end
 
Person.new("zhanjindong").to_f
Person.Test
Person.Test2