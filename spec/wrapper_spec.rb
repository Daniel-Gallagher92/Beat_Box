require './lib/linked_list'
require './lib/node'
require './lib/wrapper'

RSpec.describe BeatBox do 
  it "bb exists" do 
    bb = BeatBox.new 
    puts bb

    expect(bb).to be_an_instance_of(BeatBox)
  end

  it "list exists" do 
    bb = BeatBox.new 
    list = Linked_list.new
  # require 'pry'; binding.pry

    expect(bb.list).to be_an_instance_of(Linked_list)
  end

 

  
end