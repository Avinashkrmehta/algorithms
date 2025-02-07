# Sliding Window Technique

The Sliding Window technique is a highly efficient approach used for problems involving subarrays or substrings. It allows us to reduce the time complexity of brute force solutions from O(n²) to O(n) by maintaining a window that moves across the array or string.

## General Algorithm for Sliding Window

1. Initialize two pointers: `left` (start of window) and `right` (end of window).
2. Expand the window by moving `right` while meeting the condition.
3. If the condition is violated, shrink the window by moving `left`.
4. Update the result (max/min/sum/count) as needed.
5. Repeat until `right` reaches the end of the array or string.

## Generic Pseudocode

``` 
function sliding_window(arr, condition):
    left = 0
    result = 0 (or any default value)
    window_data = some structure (set, hash, sum, etc.)

    for right in range(0, len(arr)):
        Add arr[right] to window_data
        
        while (condition is violated):
            Remove arr[left] from window_data
            left += 1  # Shrink the window
        
        Update result based on window_data
        
    return result

```

## Problems

### Problem 1: Longest Substring Without Repeating Characters

**Problem Statement:**  
Given a string, find the length of the longest substring that does not contain repeating characters.

### Problem 2: Maximum Sum Subarray of Size K

**Problem Statement:**  
Given an array and an integer K, find the maximum sum of any contiguous subarray of size K.