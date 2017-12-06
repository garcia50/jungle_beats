require './lib/jungle_beats'

class LinkedList
  attr_reader :beats

  def initialize
    @beats = JungleBeats.new
  end

  def append(sounds)
    one = sounds.split(" ")
    one.each do |sound|
    beats.append(sound)
    end
  end

  def count
    beats.count
  end

  def play
    `say -r 150 -v Alex "#{beats.to_string}"`
  end
end