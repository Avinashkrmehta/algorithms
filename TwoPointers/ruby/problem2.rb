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
