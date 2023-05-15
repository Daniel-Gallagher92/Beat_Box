class Linked_list 
  attr_reader :head, :data
  attr_writer :head, :data

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
    current_node = Node.new(data, nil)
    current_node.next_node = head
    self.head = current_node 
  end

  def insert(index, data)
   current_node = self.head
   (index - 1).times do
    current_node = current_node.next_node
   end
   insertion = Node.new(data)
   insertion.next_node = current_node.next_node
   current_node.next_node = insertion
  end

  def find(index, range) 
    phat_beats =[]
    current_node = self.head
    index.times do 
      current_node = current_node.next_node
    end
    while current_node != nil && phat_beats.length < range 
      phat_beats << current_node.data
      current_node = current_node.next_node
    end
    phat_beats.join(" ")
  end
end