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

  it "can append nodes" do 
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

  it "can count multiple nodes" do 
    linked_list = Linked_list.new
    puts linked_list
    linked_list.append("shoop")
    linked_list.append("de")
    linked_list.append("woop")
    linked_list.append("derrr")

    expect(linked_list.count).to eq(4)
  end

  it "concats to string" do 
    linked_list = Linked_list.new
    linked_list.append("doop")
    linked_list.append("beep")
    linked_list.append("boop")

    expect(linked_list.to_s).to eq("doop beep boop")
  end
  
  it "can PREpend" do 
    linked_list = Linked_list.new
    linked_list.prepend("pow")
    linked_list.prepend("ka")
    linked_list.prepend("doom")

    expect(linked_list.to_s).to eq("doom ka pow")
  end

  it "can insert" do 
    linked_list = Linked_list.new
    linked_list.append("pow")
    linked_list.append("ka")
    linked_list.append("doom")
    linked_list.insert(1,"doom")

    expect(linked_list.to_s).to eq("pow doom ka doom")
  end

  it "can find node" do 
    linked_list = Linked_list.new
    linked_list.append("pow")
    linked_list.append("ka")
    linked_list.append("doom")

    expect(linked_list.find(1,1)).to eq("ka")
  end

  it "checks if node includes specific data" do 
    linked_list = Linked_list.new
    linked_list.append("pow")
    linked_list.append("ka")
    linked_list.append("doom")

    expect(linked_list.includes?("ka")).to eq(true)
  end

  it "checks if node doesn't include" do 
    linked_list = Linked_list.new
    linked_list.append("pow")
    linked_list.append("ka")
    linked_list.append("doom")

    expect(linked_list.includes?("shoo")).to eq(false)
  end

 
end
