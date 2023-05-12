require './lib/linked_list'
require './lib/node'

RSpec.describe Linked_list do 
  it "exists" do 
    list = Linked_list.new()
    expect(list).to be_an_instance_of(Linked_list)
  end
end