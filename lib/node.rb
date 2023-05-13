class Node 
  attr_reader :data, :next_node
  attr_writer :data, :next_node
  def initialize(data, next_node = nil)
    self.data = data
    self.next_node = next_node
  end
end