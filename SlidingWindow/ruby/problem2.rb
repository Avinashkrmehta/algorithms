=begin
Problem Statement
Given an array and an integer K, find the maximum sum of any contiguous subarray of size K.

Approach
Maintain a running sum of the window of size K.
Slide the window forward by:
Adding the new element on the right.
Removing the leftmost element.
Keep track of the maximum sum encountered.

=end

def max_sub_array(nums, k)
  return 0 if nums.empty?
  sum = 0
  max_sum = 0
  left = 0
  right = 0
  while right < nums.length
    sum += nums[right]
    if right >= k - 1
      max_sum = [max_sum, sum].max
      sum -= nums[left]
      left += 1
    end
    right += 1
  end
  max_sum
end


input_array = [4, 2, 1, 7, 8, 1, 2, 8, 1, 0]
k = 3
puts max_sub_array(input_array, k)   # Output: 16

# Dry run of the code with input_array = [4, 2, 1, 7, 8, 1, 2, 8, 1, 0] and k = 3

# Initial state:
# sum = 0, max_sum = 0, left = 0, right = 0

# Iteration 1:
# right = 0, nums[right] = 4
# sum = 4
# right < k - 1, so we don't update max_sum or move left
# right = 1

# Iteration 2:
# right = 1, nums[right] = 2
# sum = 6
# right < k - 1, so we don't update max_sum or move left
# right = 2

# Iteration 3:
# right = 2, nums[right] = 1
# sum = 7
# right >= k - 1, so we update max_sum and move left
# max_sum = 7
# sum = 3 (after subtracting nums[left] = 4)
# left = 1
# right = 3

# Iteration 4:
# right = 3, nums[right] = 7
# sum = 10
# right >= k - 1, so we update max_sum and move left
# max_sum = 10
# sum = 8 (after subtracting nums[left] = 2)
# left = 2
# right = 4

# Iteration 5:
# right = 4, nums[right] = 8
# sum = 16
# right >= k - 1, so we update max_sum and move left
# max_sum = 16
# sum = 15 (after subtracting nums[left] = 1)
# left = 3
# right = 5

# Iteration 6:
# right = 5, nums[right] = 1
# sum = 16
# right >= k - 1, so we update max_sum and move left
# max_sum = 16
# sum = 9 (after subtracting nums[left] = 7)
# left = 4
# right = 6

# Iteration 7:
# right = 6, nums[right] = 2
# sum = 11
# right >= k - 1, so we update max_sum and move left
# max_sum = 16
# sum = 3 (after subtracting nums[left] = 8)
# left = 5
# right = 7

# Iteration 8:
# right = 7, nums[right] = 8
# sum = 11
# right >= k - 1, so we update max_sum and move left
# max_sum = 16
# sum = 10 (after subtracting nums[left] = 1)
# left = 6
# right = 8

# Iteration 9:
# right = 8, nums[right] = 1
# sum = 11
# right >= k - 1, so we update max_sum and move left
# max_sum = 16
# sum = 9 (after subtracting nums[left] = 2)
# left = 7
# right = 9

# Iteration 10:
# right = 9, nums[right] = 0
# sum = 9
# right >= k - 1, so we update max_sum and move left
# max_sum = 16
# sum = 1 (after subtracting nums[left] = 8)
# left = 8
# right = 10

# Final result:
# max_sum = 16


# Explanation: The subarray with maximum sum is [7, 8, 1] with a sum of 16.
# Time complexity: O(n)
# Space complexity: O(1)
# The space complexity is O(1) because we are using a constant amount of extra space regardless of the input size.
# The time complexity is O(n) because we are iterating through the input array once.
# The algorithm maintains a sliding window of size k and calculates the sum of the elements in the window.
# The window slides from left to right, and the sum is updated accordingly.
# The maximum sum encountered is stored and updated as needed.
# The algorithm has a linear time complexity of O(n) where n is the size of the input array.