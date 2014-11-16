class Tree2
	#arre_accessor声明实例变量的同时，生成定义同名的设置方法，
	#或者attr :children,true
	attr_accessor :children,:node_name
 
 
	def initialize(tree={})
		@node_name = tree.keys()[0]
		@children = []
		tree[@node_name].each do |k,v|
			@children.push(Tree2.new({k => v}))
		end	
	end
	
	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end
 
	def visit(&block)
		block.call self
	end
end
 
ruby_tree = Tree2.new({"granpa"=>{"dad"=>{"child 1"=>{},"child 2"=>{"child 2-1"=>{}}},"uncle 1"=>{"child 3"=>{},"child 4"=>{}},"uncle 2"=>{"child 5"=>{},"child 6"=>{}}}})
 
puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
 
puts "Visiting all tree"
ruby_tree.visit_all {|node| puts node.node_name}