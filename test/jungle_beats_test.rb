require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beats'

class JungleBeatsTest < Minitest::Test
  attr_reader :list

  def setup
    @list = JungleBeats.new
  end

  def test_instance_of_Linked_list
    assert_instance_of JungleBeats, list
  end

  def test_head_returns_nil
    assert_nil list.head
  end

  def test_append_adds_sound
    assert_equal "doop", list.append("doop")
  end

  def test_next_node_returns_nil
    list.append("doop")
    assert_nil list.head.next_node
  end

  def test_count_returns_expected_amount
    list.append("doop")
    assert_equal 1, list.count
  end

end

# > require "./lib/linked_list"
# > list = LinkedList.new
# => <LinkedList head=nil #45678904567>
# > list.head
# => nil
# > list.append("doop")
# => "doop"
# > list
# => <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
# > list.head.next_node
# => nil
# > list.count
# => 1
# > list.to_string
# => "doop"
















