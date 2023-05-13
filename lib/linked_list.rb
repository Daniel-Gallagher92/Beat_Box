class Linked_list 
  attr_reader :head, :tail, :data
  def initialize
    @head = nil
    @tail = nil
  end

  def append(data)
    if(@head.nil?)
      @head = Node.new(data, nil)
    else
      lastNode = @head
      while(!lastNode.next_node.nil?)
        lastNode = lastNode.next_node
      end
    end
  end


  # def prepend(data)
  #   @head = Node.new(data, @head)
  # end
end