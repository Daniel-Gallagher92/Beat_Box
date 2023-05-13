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
    counter = 0
    current_node = self.head
    until current_node == nil
      current_node = current_node.next_node
      counter += 1
    end
    counter
  end
 
  def to_s 
    phat_beats = []
    current_node = self.head
    until current_node == nil
      phat_beats << current_node.data
      current_node = current_node.next_node
    end
    phat_beats.join(" ")
  end

  def prepend(data)
    node = Node.new(data, nil)
    node.next_node = head
    self.head = node 
  end
end