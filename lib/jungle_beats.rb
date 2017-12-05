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
    else
      append_with_existing_nodes(@head, node)
    end
  end

  def append_with_existing_nodes(head, node)
    if head.next_node == nil 
      head.next_node = node
    else
      append_with_existing_nodes(head.next_node, node)
    end
  end

  def to_string
    sounds = "#{@head.sound}"
    current_node = @head.next_node
    until current_node == nil do
      sounds << " #{current_node.sound}"
      current_node = current_node.next_node
    end 
    sounds
  end

  def prepend(data)
    prepend_node = Node.new(data)
    prepend_node.next_node = @head
    @head = prepend_node
    @count += 1
  end

  def insert(position, data, recursion_count = 0, current_node = head)
    # current_node = @head

    if recursion_count == position - 1
      insert_node = Node.new(data)
      insert_node.next_node = current_node.next_node
      current_node.next_node = insert_node
    else
      recursion_count += 1
      insert(position, data, recursion_count, current_node.next_node)
    end
  end
end


    



























