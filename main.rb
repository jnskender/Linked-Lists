require './Linked_list.rb'
list = Linked_List.new()

list << "a"
list << "b"
list << "c"
list.prepend("1")

list.to_s #(1) -> (a) -> (b) -> (c) -> nil
puts "Head: #{list.head.value}" #Head: 1
puts "Size: #{list.size}" #Size: 4
puts "Tail: #{list.tail}" #Tail: c
puts "List.at(0): #{list.at(0).value}" #List.at(0): 1
puts "List.at(1): #{list.at(1).value}" #List.at(1): a
puts "Found 'a' at (#{list.find("a")})" #Found 'a' at (1)
puts "Found 'z' at (#{list.find("z")})" #Found 'z' at ()
puts "Contains 'a' : #{list.contains?("a")}" #Contains 'a' : true
puts "Contains 'z' : #{list.contains?("z")}" #Contains 'z' : false
list.pop
list.to_s #(1) -> (a) -> (b) -> nil
list.insert_at("3",3)
list.to_s #(1) -> (a) -> (b) -> (3) -> nil
list.remove_at(3)
list.to_s #(1) -> (a) -> (b) -> nil
