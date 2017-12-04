require './lib/node'

class JungleBeats

  attr_reader :head

  def initialize
    @head = nil
  end

  def append(sound)
    if @head == nil
      @head = sound
    else
      @head.next_node = sound
    end
  end 

end