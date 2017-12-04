require './lib/node'

class JungleBeats

  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(data)
    node = Node.new(data)
    if @head == nil
      @head = node
      @head.sound
    end
  end

end