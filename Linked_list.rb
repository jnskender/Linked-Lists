require './Node.rb'
class Linked_List
    attr_accessor :head

    def initialize
        @head = nil
    end

    def append(value)
        # append adds a new node to the end of the list
        node = Node.new(value)
        i = @head
        if @head.nil?
            @head = node
        else
            i = i.next_node until i.next_node.nil?
            i.next_node = node
        end
    end
    alias << append

    def prepend(value)
        # prepend adds a new node to the start of the list
        node = Node.new(value)
        node.next_node = @head
        @head = node
    end

    def size
        # size returns the total number of nodes in the list
        i = @head
        return 0 if i.nil?
        count = 1
        until i.next_node.nil?
            i = i.next_node
            count += 1
        end
        count
    end

    def head
        # head returns the first node in the list
        @head.nil? ? 'There is no head' : @head.value.to_s
    end

    def tail
        # tail returns the last node in the list
        return "Empty List" if @head == nil
        i = @head
        i = i.next_node until i.next_node.nil?
        i.value
    end

    def at(index)
        # at(index) returns the node at the given index
        return "Empty List" if @head == nil
        i = @head
        index.times do
            i = i.next_node
        end
        i
    end

    def pop(n=1)
        # pop removes the last element from the list
        return "Empty List" if @head == nil
        n.times do
        self.at(self.size - 1).value = nil
        self.at(self.size - 2).next_node = nil
      end

    end

    def contains?(value)
        # contains? returns true if the passed in value
        # is in the list and otherwise returns false.
        return false if @head == nil
        i = @head
        until i.next_node.nil?
          if i.value == value
            return true
          else
            i = i.next_node
          end
        end
        false
    end

    def find(value)
        # find(data) returns the index of the node containing data, or nil if not found.
        return nil if @head == nil
        i = @head
        count = 0
        until i.next_node.nil?
          if i.value == value
            return count
          else
            i = i.next_node
            count +=1
          end
        end
        nil
    end

    def to_s
        # to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console.
        # The format should be: ( data ) -> ( data ) -> ( data ) -> nil
        i = @head

        if i.nil?
            puts 'List is empty!'
        else
            print "(#{@head.value}) -> "
            until i.next_node.nil?
                i = i.next_node
                print "(#{i.value}) -> "
            end
            puts 'nil'
        end
    end

    # EXTRA CREDIT
    def insert_at(index)
        # insert_at(index) that inserts the data at the given index
    end

    def remove_at(index)
        # remove_at(index) that removes the node at the given index.
        # (You will need to update the links of your nodes in the list when you remove a node.)
    end
end
