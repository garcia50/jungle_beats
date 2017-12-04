require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test
  attr_reader :node
  
  def setup
    @node = Node.new("plop")
  end

  def test_instance_of_node
    assert_instance_of Node, node
  end

  def test_next_node_returns_nil
    assert_nil node.next_node
  end
end
