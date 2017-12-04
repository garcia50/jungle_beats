require './lib/node'

class JungleBeats

  attr_accessor :head, :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    node = Node.new(data)
    @count += 1
    if @head == nil
      @head = node
      @head.sound
    end
  end

   def to_string
    @head.sound
  end
end

