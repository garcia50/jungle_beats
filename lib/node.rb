class Node

  attr_reader :sound, :next_node

  def initialize(sound, next_node = nil)
    @sound = sound
    @next_node = nil
  end

end