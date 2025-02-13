=begin
Given a linked list, determine if it has a cycle in it.
Detecting a Cycle in a Linked List (Floyd’s Cycle Detection Algorithm)
This technique is often used to determine whether a linked list contains a cycle.

Algorithm:
Initialize two pointers:
slow = head
fast = head
Move slow one step at a time and fast two steps at a time.
If fast reaches NULL, the linked list has no cycle.
If slow == fast at any point, a cycle is detected.

=end

class Node
  attr_accessor :value, :next
  def initialize(value)
    @value = value
    @next = nil
  end
end

def has_cycle(head)
  slow = head
  fast = head
  while !fast.nil? && !fast.next.nil?
    slow = slow.next
    fast = fast.next.next
    return true if slow == fast
  end
  return false
end

# Test
head = Node.new(1)
head.next = Node.new(2)
head.next.next = Node.new(3)
head.next.next.next = Node.new(4)
head.next.next.next.next = Node.new(5)
head.next.next.next.next.next = Node.new(6)
puts has_cycle(head) # false

head.next.next.next.next.next.next = head.next.next
puts has_cycle(head) # true

# Time complexity: O(N)
# Space complexity: O(1)
# N = number of nodes in the linked list
# Floyd’s Cycle Detection Algorithm uses constant space O(1) and the time complexity is O(N) where N is the number of nodes in the linked list.
# The algorithm traverses each node at most twice, which gives us O(N).
# The space complexity is O(1) because we only use two pointers in the algorithm.
# The algorithm is efficient and can be used to detect a cycle in a linked list.
# The algorithm is also known as the Tortoise and the Hare algorithm.
# The algorithm is also used to find the start of the cycle in a linked list.
# The algorithm is also used to find the length of the cycle in a linked list.



# Dry Run
# Let's dry run the algorithm with an example linked list:
# 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 3 (cycle)

# Initial state:
# slow = head (1)
# fast = head (1)

# Step 1:
# slow = slow.next (2)
# fast = fast.next.next (3)

# Step 2:
# slow = slow.next (3)
# fast = fast.next.next (5)

# Step 3:
# slow = slow.next (4)
# fast = fast.next.next (3)

# Step 4:
# slow = slow.next (5)
# fast = fast.next.next (5)

# slow == fast, cycle detected, return true