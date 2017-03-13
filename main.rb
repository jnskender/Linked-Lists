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
puts "List.at(0): #{list.at(0).value}"
puts "List.at(1): #{list.at(1).value}"
puts "Found 'a' at (#{list.find("a")})"
puts "Found 'z' at (#{list.find("z")})"
puts "Contains 'a' : #{list.contains?("a")}"
puts "Contains 'z' : #{list.contains?("z")}"
list.pop
list.to_s
