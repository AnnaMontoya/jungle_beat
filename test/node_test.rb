require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_node_returns_data
    node = Node.new("plop")

    assert_equal "plop", node.data
  end

  def test_the_next_node_is_nil
    node = Node.new("doop")

    assert_nil node.next_node
  end

end
