class BeatBox 
attr_reader :list, :head
attr_writer :list, :head

  def initialize 
    self.list = Linked_list.new
  end

  def append(data) 
    phat_beats_array = data.split(" ")
    phat_beats_array.each { |beat| list.append(beat) }
    phat_beats_array.join(" ")
  end

  def count
    self.list.count
 end

  def play(voice = "Trinoids", speed = "150", data = "woo hoo shu")
    `say -r #{speed} -v #{voice} #{data}`
  end

end