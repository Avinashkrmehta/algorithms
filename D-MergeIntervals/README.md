# Merge Intervals

The Merge Intervals algorithm is used to merge overlapping intervals in a list of intervals. This is a common problem in computer science and can be solved efficiently with sorting.

## Problem Statement
Given a collection of intervals, merge all overlapping intervals.

## Example
```plaintext
Input: [[1,3],[2,6],[8,10],[15,18]]
Output: [[1,6],[8,10],[15,18]]
Explanation: Since intervals [1,3] and [2,6] overlap, merge them into [1,6].
```

## Approach
1. **Sort the Intervals**: First, sort the intervals based on the starting point.
2. **Merge Intervals**: Iterate through the sorted intervals and merge them if they overlap.

## Detailed Steps
### Step 1: Sort the Intervals
Sort the intervals based on their starting points. This helps in easily identifying overlapping intervals.

### Step 2: Initialize Merged List
Create an empty list to store the merged intervals.

### Step 3: Iterate and Merge
Iterate through the sorted intervals and merge them if they overlap. If they do not overlap, add the current interval to the merged list.

## Pseudocode
```plaintext
function mergeIntervals(intervals):
    if intervals.length <= 1:
        return intervals

    // Sort intervals based on the starting point
    intervals.sort((a, b) => a[0] - b[0])

    merged = []
    currentInterval = intervals[0]
    merged.push(currentInterval)

    for nextInterval in intervals:
        currentEnd = currentInterval[1]
        nextStart = nextInterval[0]
        nextEnd = nextInterval[1]

        if currentEnd >= nextStart:
            // Overlapping intervals, merge them
            currentInterval[1] = max(currentEnd, nextEnd)
        else:
            // No overlap, add the next interval to the list
            currentInterval = nextInterval
            merged.push(currentInterval)

    return merged
```

## Complexity Analysis
- **Time Complexity**: O(n log n) due to sorting.
- **Space Complexity**: O(n) for storing the merged intervals.

## Summary
| Step          | Description                              |
|---------------|------------------------------------------|
| Sort Intervals| Sort intervals based on starting points  |
| Merge Intervals| Iterate and merge overlapping intervals |

## Use Cases
- Merging meeting times
- Combining overlapping date ranges
- Consolidating intervals in computational geometry

## Problems
### Problem 1: Merge Overlapping Intervals
**Problem Statement:**  
Given a collection of intervals, merge all overlapping intervals and return the result.

### Problem 2: Insert Interval
**Problem Statement:**  
Given a set of non-overlapping intervals, insert a new interval into the intervals (merge if necessary).

### Problem 3: Employee Free Time
**Problem Statement:**  
Given a list of schedules, find the free time intervals common to all employees.
