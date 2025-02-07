=begin
Problem Statement
Given a string, find the length of the longest substring that does not contain repeating characters.

Approach
Use a hash map (or set) to track the characters in the current window.
Expand the window by adding characters until a duplicate is found.
Shrink the window from the left until the duplicate is removed.
Keep track of the maximum window size.

=end

def length_of_longest_substring(s)
  return 0 if s.empty?
  max_length = 0
  left = 0
  right = 0
  char_map = {}
  while right < s.length
    if char_map[s[right]]
      char_map.delete(s[left])
      left += 1
    else
      char_map[s[right]] = true
      max_length = [max_length, right - left + 1].max
      right += 1
    end
  end
  max_length
end

# Example usage
input_string = "abcabcbb"
puts length_of_longest_substring(input_string)  # Output: 3

# Dry run
# Input: "abcabcbb"
# Initial state: max_length = 0, left = 0, right = 0, char_map = {}

# Step 1: right = 0, s[right] = 'a'
# char_map = {'a' => true}
# max_length = 1

# Step 2: right = 1, s[right] = 'b'
# char_map = {'a' => true, 'b' => true}
# max_length = 2

# Step 3: right = 2, s[right] = 'c'
# char_map = {'a' => true, 'b' => true, 'c' => true}
# max_length = 3

# Step 4: right = 3, s[right] = 'a'
# char_map = {'a' => true, 'b' => true, 'c' => true}
# Duplicate found, delete s[left] = 'a'
# left = 1
# char_map = {'b' => true, 'c' => true}

# Step 5: right = 3, s[right] = 'a'
# char_map = {'b' => true, 'c' => true, 'a' => true}
# max_length = 3

# Step 6: right = 4, s[right] = 'b'
# char_map = {'b' => true, 'c' => true, 'a' => true}
# Duplicate found, delete s[left] = 'b'
# left = 2
# char_map = {'c' => true, 'a' => true}

# Step 7: right = 4, s[right] = 'b'
# char_map = {'c' => true, 'a' => true, 'b' => true}
# max_length = 3

# Step 8: right = 5, s[right] = 'c'
# char_map = {'c' => true, 'a' => true, 'b' => true}
# Duplicate found, delete s[left] = 'c'
# left = 3
# char_map = {'a' => true, 'b' => true}

# Step 9: right = 5, s[right] = 'c'
# char_map = {'a' => true, 'b' => true, 'c' => true}
# max_length = 3

# Step 10: right = 6, s[right] = 'b'
# char_map = {'a' => true, 'b' => true, 'c' => true}
# Duplicate found, delete s[left] = 'a'
# left = 4
# char_map = {'b' => true, 'c' => true}

# Step 11: right = 6, s[right] = 'b'
# Duplicate found, delete s[left] = 'b'
# left = 5
# char_map = {'c' => true}

# Step 12: right = 6, s[right] = 'b'
# char_map = {'c' => true, 'b' => true}
# max_length = 3

# Step 13: right = 7, s[right] = 'b'
# char_map = {'c' => true, 'b' => true}
# Duplicate found, delete s[left] = 'c'
# left = 6
# char_map = {'b' => true}

# Step 14: right = 7, s[right] = 'b'
# Duplicate found, delete s[left] = 'b'
# left = 7
# char_map = {}

# Step 15: right = 7, s[right] = 'b'
# char_map = {'b' => true}
# max_length = 3

# Final result: max_length = 3
# 
#
#
#
#
# Explanation: The longest substring without repeating characters is "abc".
# The length is 3.
# Time complexity: O(n)
# Space complexity: O(min(n, m)), where n is the length of the input string and m is the size of the character set.
# In this case, the character set is ASCII, which has 128 characters. Therefore, the space complexity is O(min(n, 128)).
# The space complexity can be considered as O(1) since the size of the character set is fixed.
# The hash map will contain at most 128 characters, which is a constant number.
# The space complexity is O(1) since the size of the character set is fixed.
