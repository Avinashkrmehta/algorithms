=begin
Merge Intervals
This approach efficiently merges intervals using sorting + iteration.

Approach: Sorting + Merging
Steps:
  Sort the Intervals
    Sort the given intervals based on their starting points (first element of each sub-array).
    Sorting ensures that overlapping intervals are adjacent.

  Iterate and Merge Intervals
    Initialize an empty result array.
    Traverse through sorted intervals and:
      If the current interval overlaps with the last interval in the result, merge them.
      Otherwise, add the current interval to the result as a separate interval.
=end


def merge(intervals)
  return [] if intervals.empty?
  intervals.sort!
  result = [intervals[0]]
  for i in 1...intervals.length
    current_interval = intervals[i]
    last_interval = result[-1]

    if current_interval[0] <= last_interval[1]
      last_interval[1] = [last_interval[1], current_interval[1]].max
    else
      result << current_interval
    end
  end
  return result
end


# optimized version
def merge(intervals)
  return [] if intervals.empty?
  intervals.sort_by! { |interval| interval[0] }
  result = []
  intervals.each do |current_interval|
    if result.empty? || result[-1][1] < current_interval[0]
      result << current_interval
    else
      result[-1][1] = [result[-1][1], current_interval[1]].max
    end
  end
  result
end


intervals = [[1,3],[2,6],[8,10],[15,18]]
puts merge(intervals).to_s
intervals = [[1,4],[4,5]]
puts merge(intervals).to_s
intervals = [[1,4],[0,4]]
puts merge(intervals).to_s

intervals =  [[1,2],[1,5],[2,6],[7,8],[4,6]]
puts merge(intervals).to_s

# Test cases
  # Input: [[1,3],[2,6],[8,10],[15,18]]
  # Output: [[1,6],[8,10],[15,18]]
  # Explanation: Since intervals [1,3] and [2,6] overlap, merge them into [1,6].
  # Input: [[1,4],[4,5]]
  # Output: [[1,5]]
  # Explanation: Intervals [1,4] and [4,5] are considered overlapping.
  # Input: [[1,4],[0,4]]
  # Output: [[0,4]]
  # Explanation: Intervals [1,4] and [0,4] are considered overlapping.
  #  Complexity Analysis
  # Time complexity: O(nlogn) where n is the number of intervals.
  # Sorting the intervals takes O(nlogn) time.
  # Merging the intervals takes O(n) time.
  # Space complexity: O(n) where n is the number of intervals.
  # The space complexity is O(n) because we need to store the sorted intervals.

# Dry run
# Input: [[1,3],[2,6],[8,10],[15,18]]
# Sorted: [[1,3],[2,6],[8,10],[15,18]]
# Initial result: [[1,3]]
# Iteration 1: current_interval = [2,6], last_interval = [1,3]
# Overlapping, merge: result = [[1,6]]
# Iteration 2: current_interval = [8,10], last_interval = [1,6]
# Not overlapping, add: result = [[1,6], [8,10]]
# Iteration 3: current_interval = [15,18], last_interval = [8,10]
# Not overlapping, add: result = [[1,6], [8,10], [15,18]]
# Final result: [[1,6], [8,10], [15,18]]

# Input: [[1,4],[4,5]]
# Sorted: [[1,4],[4,5]]
# Initial result: [[1,4]]
# Iteration 1: current_interval = [4,5], last_interval = [1,4]
# Overlapping, merge: result = [[1,5]]
# Final result: [[1,5]]

# Input: [[1,4],[0,4]]
# Sorted: [[0,4],[1,4]]
# Initial result: [[0,4]]
# Iteration 1: current_interval = [1,4], last_interval = [0,4]
# Overlapping, merge: result = [[0,4]]
# Final result: [[0,4]]