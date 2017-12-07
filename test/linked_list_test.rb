require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'

class LinkedListTest < Minitest::Test

  def test_the_head_is_nil
    list = LinkedList.new

    assert_nil list.head
  end

  def test_append_will_add_new_piece_of_data_to_list
    list = LinkedList.new

    list.append("doop")
    assert_instance_of Node, list.head
    assert_equal "doop", list.head.data
  end

  def test_the_next_node_in_the_list_is_nil
    list = LinkedList.new
    node = Node.new("doop")

    list.append("doop")

    assert_nil list.head.next_node
  end

  def test_count_increases_with_each_sound_passed
    list = LinkedList.new

    list.append("doop")
    assert_equal 1, list.count
    list.append("deep")
    assert_equal 2, list.count
  end

  def test_it_reports_each_sound_appended
    list = LinkedList.new
    node = Node.new("doop")

    list.append("doop")
    assert_equal "doop", list.to_string
    list.append("deep")
    assert_equal "doop deep", list.to_string
  end

  def test_data_can_be_prepended_to_beginning_of_list
    list = LinkedList.new

    list.append("plop")
    list.append("suu")

    assert_equal "dop", list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
    assert_equal 3, list.count
  end

  def test_it_can_insert_data_at_any_position
    
    list = LinkedList.new

    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    assert_equal "woo", list.insert(1, "woo")
  end
end
