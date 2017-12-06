require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  attr_reader :list, :beats

  def setup
    @beats = JungleBeats.new
    @list = LinkedList.new
  end

  def test_instance_of_linked_list
    assert_instance_of LinkedList, list
  end

  def test_head_returns_nil
    assert_nil list.beats.head
  end

  def test_append_adds_sounds
    list.append("deep doo ditt") 

    assert_equal "deep", list.beats.head.sound
  end

  def test_append_adds_sounds_2
    list.append("deep doo ditt") 

    assert_equal "doo", list.beats.head.next_node.sound
  end  

  def test_count_returns_correct_amount_of_nodes
    list.append("deep doo ditt")
    list.append("woo hoo shu")

    assert_equal 6, list.count
  end

  def test_if_sound_is_played
    list.append("deep doo ditt woo hoo shu")
    list.play
  end

  def test_just_for_fun
    list.append("I love Turing")
    list.play
  end
end