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

    expect(linked_list.head.data).to eq("doop")
  end

  it "can count empty list" do 
    linked_list = Linked_list.new
    puts linked_list
    linked_list.count

    expect(linked_list.count).to eq(0)
  end

  it "can count" do 
    linked_list = Linked_list.new
    puts linked_list
    linked_list.append("doop")

    expect(linked_list.count).to eq(1)
  end

  it "concats to string" do 
    linked_list = Linked_list.new
    linked_list.append("doop")
    linked_list.append("beep")
    linked_list.append("boop")

    expect(linked_list.to_s).to eq("doop beep boop")
  end
end
