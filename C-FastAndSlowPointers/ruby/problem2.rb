=begin
Finding the Middle Element of a Linked List
We can efficiently find the middle node of a singly linked list using the Fast and Slow Pointers technique.

Approach: Fast and Slow Pointers
Explanation
  We use two pointers:
    slow moves one step at a time.
    fast moves two steps at a time.
When fast reaches the end of the list (i.e., fast == nil or fast.next == nil),
  slow will be at the middle node of the list.
Steps
  Initialize two pointers:
    slow = head
    fast = head
  Traverse the list:
    Move slow one step (slow = slow.next).
    Move fast two steps (fast = fast.next.next).
Stop when fast reaches nil or fast.next == nil.
The slow pointer now points to the middle element.

=end

class Node
  attr_accessor :value, :next
  def initialize(value)
    @value = value
    @next = nil
  end
end

def find_middle_of_linked_list(head)
  slow = head
  fast = head
  while !fast.nil? && !fast.next.nil?
    slow = slow.next
    fast = fast.next.next
  end
  return slow
end

# Test
head = Node.new(1)
head.next = Node.new(2)
head.next.next = Node.new(3)
head.next.next.next = Node.new(4)
head.next.next.next.next = Node.new(5)
head.next.next.next.next.next = Node.new(6)
puts find_middle_of_linked_list(head).value # 4

head.next.next.next.next.next.next = Node.new(7)
puts find_middle_of_linked_list(head).value # 5

# Time complexity: O(N)
# Space complexity: O(1)
# N = number of nodes in the linked list
# The Fast and Slow Pointers technique uses constant space O(1) and the time complexity is O(N) where N is the number of nodes in the linked list.
# The algorithm traverses each node at most twice, which gives us O(N).
# The space complexity is O(1) because we only use two pointers in the algorithm.
# The algorithm is efficient and can be used to find the middle element of a linked list.
# The algorithm is also known as the Tortoise and the Hare algorithm.

# Dry Run
=begin
head = 1 -> 2 -> 3 -> 4 -> 5 -> 6
slow = 1
fast = 1
slow = 2
fast = 3
slow = 3
fast = 5
slow = 4
fast = 7
slow = 5
fast = nil
slow = 5
Return 5

head = 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7
slow = 1
fast = 1
slow = 2
fast = 3
slow = 3
fast = 5
slow = 4
fast = 7
slow = 5
fast = nil
slow = 5
Return 5
=end
