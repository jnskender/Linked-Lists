require './Linked_list.rb'
list = Linked_List.new()

list << "a"
list << "b"
list << "c"
list.prepend("1")

list.to_s
puts "Head: #{list.head}"
puts "Size: #{list.size}"
puts "Tail: #{list.tail}"
puts "List.at(0): #{list.at(0).to_s}"
puts "List.at(1): #{list.at(1)}"
=begin
list.pop
puts "After Pop #{list.to_s}"
=end
