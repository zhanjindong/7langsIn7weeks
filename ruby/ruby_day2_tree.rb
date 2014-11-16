class Tree
	#arre_accessor����ʵ��������ͬʱ�����ɶ���ͬ�������÷�����
	#����attr :children,true
	attr_accessor :children,:node_name
 
	def initialize(name,children=[])
		@children = children
		@node_name = name
	end
 
	def visit_all(&block)
		visit &block
		children.each {|c| c.visit_all &block}
	end
 
	def visit(&block)
		block.call self
	end
end
 
ruby_tree = Tree.new("Ruby",[Tree.new("Reia"),Tree.new("MacRuby")])
 
puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
 
puts "Visiting all tree"
ruby_tree.visit_all {|node| puts node.node_name}
 
ruby_tree.node_name = "new node name"
puts ruby_tree.node_name