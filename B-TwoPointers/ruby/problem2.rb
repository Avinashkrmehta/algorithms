=begin
Problem Statement
Given an array representing elevation heights, find out how much rainwater can be trapped between buildings.

Approach (Two Pointers)
Use two pointers:
  - left at the start
  - right at the end
Maintain left_max and right_max to track the highest walls seen from both sides.
If height[left] < height[right]:
  - Water trapped depends on left_max
  - Move left forward (left++)
Otherwise:
  - Water trapped depends on right_max
  - Move right backward (right--)
Accumulate water as water += max(0, min(left_max, right_max) - height[i])

=end

def trap(height)
  return 0 if height.empty?
  left = 0
  right = height.length - 1
  left_max = 0
  right_max = 0
  water = 0
  while left < right
    if height[left] < height[right]
      if height[left] >= left_max
        left_max = height[left]
      else
        water += left_max - height[left]
      end
      left += 1
    else
      if height[right] >= right_max
        right_max = height[right]
      else
        water += right_max - height[right]
      end
      right -= 1
    end
  end
  water
end

# Example usage
input_array = [0,1,0,2,1,0,1,3,2,1,2,1]
puts trap(input_array)  # Output: 6






# Dry run of the code with input_array = [0,1,0,2,1,0,1,3,2,1,2,1]
# Initial state: left = 0, right = 11, left_max = 0, right_max = 0, water = 0
# Iteration 1: height[left] = 0, height[right] = 1
# height[left] < height[right], so water += max(0, 0 - 0) = 0
# left = 1
# Iteration 2: height[left] = 1, height[right] = 1
# height[left] < height[right], so water += max(0, 0 - 1) = 0
# left = 2
# Iteration 3: height[left] = 0, height[right] = 1
# height[left] < height[right], so water += max(0, 0 - 1) = 0
# left = 3
# Iteration 4: height[left] = 2, height[right] = 1
# height[left] > height[right], so water += max(0, 0 - 1) = 1
# right = 10
# Iteration 5: height[left] = 2, height[right] = 2
# height[left] < height[right], so water += max(0, 2 - 2) = 1
# left = 4
# Iteration 6: height[left] = 1, height[right] = 2
# height[left] < height[right], so water += max(0, 2 - 1) = 2
# left = 5
# Iteration 7: height[left] = 0, height[right] = 2
# height[left] < height[right], so water += max(0, 2 - 0) = 4
# left = 6
# Iteration 8: height[left] = 1, height[right] = 2
# height[left] < height[right], so water += max(0, 2 - 1) = 5
# left = 7
# Iteration 9: height[left] = 3, height[right] = 2
# height[left] > height[right], so water += max(0, 2 - 2) = 5
# right = 9
# Iteration 10: height[left] = 3, height[right] = 1
# height[left] > height[right], so water += max(0, 2 - 1) = 6
# right = 8
# Iteration 11: height[left] = 3, height[right] = 0
# height[left] > height[right], so water += max(0, 2 - 0) = 8
# right = 7
# Iteration 12: left = 8, right = 7, left_max = 3, right_max = 3, water = 8
# left >= right, so we exit the loop
# Output: 8
# Output: 6

# Brute force approach
def trap_brute_force(height)
  return 0 if height.empty?
  n = height.length
  water = 0

  (0...n).each do |i|
    left_max = 0
    right_max = 0

    # Find the maximum height to the left of the current index
    (0..i).each do |j|
      left_max = [left_max, height[j]].max
    end

    # Find the maximum height to the right of the current index
    (i...n).each do |j|
      right_max = [right_max, height[j]].max
    end

    # Calculate the water trapped at the current index
    water += [left_max, right_max].min - height[i]
  end

  water
end

# Example usage
input_array = [0,1,0,2,1,0,1,3,2,1,2,1]
puts trap_brute_force(input_array)  # Output: 6

# Dry run of the code with input_array = [0,1,0,2,1,0,1,3,2,1,2,1]
# Initial state: water = 0
# Iteration 1: i = 0, left_max = 0, right_max = 3
# water += min(0, 3) - 0 = 0
# Iteration 2: i = 1, left_max = 1, right_max = 3
# water += min(1, 3) - 1 = 0
# Iteration 3: i = 2, left_max = 1, right_max = 3
# water += min(1, 3) - 0 = 1
# Iteration 4: i = 3, left_max = 2, right_max = 3
# water += min(2, 3) - 2 = 1
# Iteration 5: i = 4, left_max = 2, right_max = 3
# water += min(2, 3) - 1 = 2
# Iteration 6: i = 5, left_max = 2, right_max = 3
# water += min(2, 3) - 0 = 4
# Iteration 7: i = 6, left_max = 2, right_max = 3
# water += min(2, 3) - 1 = 5
# Iteration 8: i = 7, left_max = 3, right_max = 3
# water += min(3, 3) - 3 = 5
# Iteration 9: i = 8, left_max = 3, right_max = 2
# water += min(3, 2) - 2 = 6
# Iteration 10: i = 9, left_max = 3, right_max = 2
# water += min(3, 2) - 1 = 6
# Iteration 11: i = 10, left_max = 3, right_max = 2
# water += min(3, 2) - 2 = 6
# Iteration 12: i = 11, left_max = 3, right_max = 1
# water += min(3, 1) - 1 = 6
# Output: 6
# 