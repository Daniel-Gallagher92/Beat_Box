class Linked_list 
  attr_reader :head, :tail, :data
  attr_writer :head

  def initialize
  self.head = nil
  end

  def append(data)
    if(self.head.nil?)
      self.head = Node.new(data, nil)
    else
      lastNode = self.head
      while(!lastNode.next_node.nil?)
        lastNode = lastNode.next_node
      end
      lastNode.next_node = Node.new(data, nil)
    end
  end

  def count 
    if self.head.nil?
      0
    else
      1
    end
  end
 
  def to_s 
    beats = []
    current_node = self.head
    until current_node == nil
      beats << current_node.data
      current_node = current_node.next_node
    end
    beats.join(" ")
  end

  # def prepend(data)
  #   @head = Node.new(data, @head)
  # end
end