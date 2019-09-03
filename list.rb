class LinkedListNode

  attr_accessor :value, :next_node

  def initialize(value, next_node=nil) 
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node 
    print "#{list_node.value} ->"
    print_values(list_node.next_node)
  else
    print "nil"
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

    # Push a value onto the stack
  def push(value)
    @data = LinkedListNode.new(value, @data)
  end

  # Pop an item off the stack.
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
    num = @data.pop
    puts num
  end
end

def reverse_list(list)
  while list
    #  print list.value != nil
    list = list.next_node
  end
  print 'nil'
end

node1 = LinkedListNode.new(12)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(37, node2)

print_values(node3)
puts "\n--------------------------"

stack = Stack.new

#stack.push(node3)
stack.push(1)

stack.push(2)

puts stack.pop


puts stack.pop



# stack.push -- until they are all there
# pop them off and print the values





