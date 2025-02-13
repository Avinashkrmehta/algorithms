=begin
Problem Statement
Given a sorted array nums and a target value target, find two numbers that add up to the target and return their indices.

Approach (Two Pointers)
Initialize two pointers:
  left at the start (0)
  right at the end (n-1)
Check the sum of nums[left] + nums[right]:
  If the sum is equal to target, return the indices.
  If the sum is smaller than target, move left forward (left++).
  If the sum is greater than target, move right backward (right--).
Repeat until the pointers meet.

=end


def two_sum(nums, target)
  left = 0
  right = nums.length - 1
  while left < right
    sum = nums[left] + nums[right]
    if sum == target
      return [left, right]
    elsif sum < target
      left += 1
    else
      right -= 1
    end
  end
end

# Example usage
input_array = [2, 7, 11, 15]
target = 9
puts two_sum(input_array, target).to_s  # Output: [0, 1]



# Dry run of the code with input_array = [2, 7, 11, 15] and target = 9
# Initial state: left = 0, right = 3
  # Iteration 1: sum = 17 > 9, right = 2
  # Iteration 2: sum = 13 > 9, right = 1
  # Iteration 3: sum = 9 == 9, return [0, 1]
# Output: [0, 1]
