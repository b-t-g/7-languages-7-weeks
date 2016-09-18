#!/usr/bin/ruby

class Tree
  attr_accessor :children, :node_name

  def initialize(name, children=[])
    @children = children
    @node_name = name
  end

  def initialize(map)
    map.keys.each {|key_name| @node_name = key_name
    puts "creating node #{key_name} with children #{map[key_name]}"
    @children = Tree.new (map[key_name])}
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

test_tree = Tree.new ({'grandpa' => {'dad' => {'child 1' => {}, 'child 2' => {} }, 'uncle' => {'child 3' => {}, 'child 4' => {} }}} )
