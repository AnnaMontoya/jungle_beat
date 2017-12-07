require './lib/node'
require 'pry'

class LinkedList
  attr_reader :head, :count

  def initialize
    @head  = nil
    @count = 0
  end

  def append(data)
      if @head.nil?
        @head = Node.new(data)
      else
        current_node = @head
        until current_node.next_node.nil?
          current_node = current_node.next_node
        end
      current_node.next_node = Node.new(data)
    end
  end

  def count
    current_node = @head
    current_node.nil?
    count = 0
    until current_node.nil?
      current_node = current_node.next_node
      count += 1
    end
    count
  end

  def to_string
    current_node = @head
    if current_node.nil?
      ""
    else
      list_of_sounds = "#{@head.data}"
      until current_node.next_node.nil?
        current_node = current_node.next_node
        list_of_sounds.concat(" #{current_node.data}")
      end
      list_of_sounds
    end
  end

  def prepend(data)
    new_node = Node.new(data)
    new_node.next_node = @head
    @head = new_node
    data
  end

  def insert(position, data)
    if position == 0
      prepend(data)
      else current_node = @head
        inserted_node = Node.new(data)
        position.times do
          current_node = current_node.next_node
        end
        moved_node = current_node
        inserted_node.next_node = moved_node
        data
    end
  end

end
