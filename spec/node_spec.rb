require './lib/node'
require 'RSpec'

RSpec.describe Node do 
  it "exists" do 
    node = Node.new("plop", nil)
    expect(node).to be_an_instance_of(Node)
  end
 it "has data" do 
  node = Node.new("plop", nil)
  expect(node.data).to eq("plop")
 end
 it "has next_node" do 
  node = Node.new("plop", nil)
  expect(node.next_node).to eq(nil)
 end
end