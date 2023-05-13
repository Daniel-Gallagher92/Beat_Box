require './lib/linked_list'
require './lib/node'

RSpec.describe Linked_list do 

  it "exists" do 
    linked_list = Linked_list.new
    puts linked_list

    expect(linked_list).to be_an_instance_of(Linked_list)
  end

  it "has nil head" do 
    linked_list = Linked_list.new
    puts linked_list

    expect(linked_list.head).to eq(nil)
  end

  it "can append" do 
    linked_list = Linked_list.new
    puts linked_list
    linked_list.append("doop")

    expect(linked_list.head).to_not eq(nil)
    expect(linked_list.head).to be_an_instance_of(Node)
    expect(linked_list.head.data).to eq("doop")
  end

  it "can count empty list" do 
    linked_list = Linked_list.new
    puts linked_list
    linked_list.count

    expect(linked_list.count).to eq(0)
  end
