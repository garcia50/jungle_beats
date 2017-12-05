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
    list.append("doop")
    assert_equal "doop", list.head.sound
  end

  def test_next_node_returns_nil
    list.append("doop")
    assert_nil list.head.next_node
  end

  def test_count_returns_1
    list.append("doop")
    assert_equal 1, list.count
  end

  def test_to_string_returns_string
    list.append("doop")
    assert_equal "doop", list.to_string
  end

  def test_count_returns_2
    list.append("doop")
    list.append("deep")
    assert_equal 2, list.count
  end

  def test_to_string_returns_new_string
    list.append("doop")
    list.append("deep")
    assert_equal "doop deep", list.to_string
  end

  def test_user_can_prepend_data_to_existing_list
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    assert_equal "dop plop suu", list.to_string
  end

  def test_count_returns_3
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    assert_equal 3, list.count
  end

  def test_insert_places_data_in_given_positon_and_returns_string
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")

    assert_equal "dop woo plop suu", list.to_string
  end

end


# > require "./lib/linked_list"
# > list = LinkedList.new
# > list.append("plop")
# => "plop"
# > list.to_string
# => "plop"
# > list.append("suu")
# => "suu"
# > list.prepend("dop")
# => "dop"
# > list.to_string
# => "dop plop suu"
# > list.count
# => 3
# > list.insert(1, "woo")
# => "woo"
# list.to_string
# => "dop woo plop suu"




















