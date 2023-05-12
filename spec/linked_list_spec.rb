require './lib/linked_list'
require './lib/node'

RSpec.describe Linked_list do 
  it "exists" do 
    list = Linked_list.new(nil)
    expect(list).to be_an_instance_of(Linked_list)
  end
  it "has nil head" do 
    list = Linked_list.new(nil)
    expect(list.head).to eq(nil)
  end
end