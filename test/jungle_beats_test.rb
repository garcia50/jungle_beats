require 'minitest/autorun'
require 'minitest/pride'
require './lib/jungle_beats'

class JungleBeatsTest < Minitest::Test
  attr_reader :beats

  def setup
    @beats = JungleBeats.new
  end

  def test_instance_of_Linked_beats
    assert_instance_of JungleBeats, beats
  end

  def test_head_returns_nil
    assert_nil beats.head
  end

  def test_append_adds_sound
    beats.append("doop")
    assert_equal "doop", beats.head.sound
  end

  def test_next_node_returns_nil
    beats.append("doop")
    assert_nil beats.head.next_node
  end

  def test_count_returns_1
    beats.append("doop")
    assert_equal 1, beats.count
  end

  def test_to_string_returns_string
    beats.append("doop")
    assert_equal "doop", beats.to_string
  end

  def test_count_returns_2
    beats.append("doop")
    beats.append("deep")
    assert_equal 2, beats.count
  end

  def test_to_string_returns_new_string
    beats.append("doop")
    beats.append("deep")
    assert_equal "doop deep", beats.to_string
  end

  def test_user_can_prepend_data_to_existing_beats
    beats.append("plop")
    beats.append("suu")
    beats.prepend("dop")

    assert_equal "dop plop suu", beats.to_string
  end

  def test_count_returns_3
    beats.append("plop")
    beats.append("suu")
    beats.prepend("dop")

    assert_equal 3, beats.count
  end

  def test_insert_places_data_in_given_positon_and_returns_string
    beats.append("plop")
    beats.append("suu")
    beats.prepend("dop")
    beats.insert(1, "woo")

    assert_equal "dop woo plop suu", beats.to_string
  end

  def test_find_locates_sound_with_given_position
    beats.append("deep")
    beats.append("woo")
    beats.append("shi")
    beats.append("shu")
    beats.append("blop")

    assert_equal "shi", beats.find(2, 1)
  end

  def test_find_locates_sound_with_given_position
    beats.append("deep")
    beats.append("woo")
    beats.append("shi")
    beats.append("shu")
    beats.append("blop")

    assert_equal "woo shi shu", beats.find(1, 3)
  end

  def test_includes_returns_correct_sound
    beats.append("deep")
    beats.append("woo")
    beats.append("shi")
    beats.append("shu")
    beats.append("blop")

    assert beats.includes?("deep")
  end

  def test_includes_returns_correct_sound_2
    beats.append("deep")
    beats.append("woo")
    beats.append("shi")
    beats.append("shu")
    beats.append("blop")

    refute beats.includes?("dep")
  end

  def test_pop_removes_given_sound
    beats.append("deep")
    beats.append("woo")
    beats.append("shi")
    beats.append("shu")
    beats.append("blop")

    assert_equal "blop", beats.pop
  end

  def test_pop_removes_given_sound_2
    beats.append("deep")
    beats.append("woo")
    beats.append("shi")
    beats.append("shu")

    assert_equal "shu", beats.pop
  end
end