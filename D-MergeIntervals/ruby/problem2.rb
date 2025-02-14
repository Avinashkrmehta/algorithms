=begin
Insert Intervals
This approach efficiently merges intervals using sorting + iteration.

Approach: Iteration + Merging
Steps:
  Initialize an empty result array.
  Iterate through the given intervals:
    If the current interval ends before the new_interval starts, add it directly to the result.
    If the current interval starts after the new_interval ends, add new_interval (if not already added) and then add the current interval.
    If there is an overlap, merge intervals by updating the new_interval to [min(start), max(end)].
  If new_interval is still not added, append it at the end.


=end

def insert(intervals, new_interval)
  return [new_interval] if intervals.empty?
  result = []
  added = false
  intervals.each do |interval|
    if interval[1] < new_interval[0]
      result << interval
    elsif interval[0] > new_interval[1]
      result << new_interval unless added
      result << interval
      added = true
    else
      new_interval[0] = [new_interval[0], interval[0]].min
      new_interval[1] = [new_interval[1], interval[1]].max
    end
  end
  result << new_interval unless added
  result
end

intervals = [[1,3],[6,9]]
new_interval = [2,5]
puts insert(intervals, new_interval).to_s
intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]]
new_interval = [4,8]
puts insert(intervals, new_interval).to_s
intervals = []
new_interval = [5,7]
puts insert(intervals, new_interval).to_s
intervals = [[1,5]]
new_interval = [2,3]
puts insert(intervals, new_interval).to_s

# Time Complexity: O(N)
# Space Complexity: O(N)
# N = number of intervals in the input array
# 
# test with the following inputs:
# intervals = [[1,3],[6,9]]
# new_interval = [2,5]
# 
# intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]]
# new_interval = [4,8]
# 
# intervals = []
# new_interval = [5,7]
# 
# intervals = [[1,5]]
# new_interval = [2,3]
# 
#Dry run
# Input: intervals = [[1,3],[6,9]], new_interval = [2,5]
# Initial result: []
# Iterating through intervals:
# interval: [1,3], new_interval: [2,5]
# interval[1] < new_interval[0]: 3 < 2
# result: [[1,3]]
# interval: [6,9], new_interval: [2,5]
# interval[1] < new_interval[0]: 9 < 2
# result: [[1,3]]
# new_interval not added yet, so add it to the result.
# result: [[1,3], [2,5]]
# Final result: [[1,3], [2,5]]
# 
# Input: intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]], new_interval = [4,8]
# Initial result: []
# Iterating through intervals:
# interval: [1,2], new_interval: [4,8]
# interval[1] < new_interval[0]: 2 < 4
# result: [[1,2]]
# interval: [3,5], new_interval: [4,8]
# interval[1] < new_interval[0]: 5 < 4
# result: [[1,2], [3,5]]
# interval: [6,7], new_interval: [4,8]
# interval[1] < new_interval[0]: 7 < 4
# result: [[1,2], [3,5], [6,7]]
# interval: [8,10], new_interval: [4,8]
# interval[0] > new_interval[1]: 8 > 8
# result: [[1,2], [3,5], [6,7]]
# new_interval not added yet, so add it to the result.
# result: [[1,2], [3,5], [6,7], [4,8]]
# interval: [12,16], new_interval: [4,8]
# interval[0] > new_interval[1]: 12 > 8
# result: [[1,2], [3,5], [6,7], [4,8]]
# Final result: [[1,2], [3,5], [6,7], [4,8]]
# 
# Input: intervals = [], new_interval = [5,7]
# Initial result: []
# new_interval not added yet, so add it to the result.
# Final result: [[5,7]]
#   
# Input: intervals = [[1,5]], new_interval = [2,3]
# Initial result: []
# Iterating through intervals:
# interval: [1,5], new_interval: [2,3]
# interval[1] < new_interval[0]: 5 < 2
# result: [[1,5]]
# new_interval not added yet, so add it to the result.
# result: [[1,5], [2,3]]
# Final result: [[1,5], [2,3]]
# 
#
