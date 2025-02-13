# Two Pointers

The Two Pointers technique is an optimized approach to solve problems involving arrays, linked lists, or strings efficiently. The idea is to use two pointers to traverse the data structure in a single pass instead of using nested loops, which helps reduce the time complexity from O(n²) to O(n).


## General Steps
### Initialize Two Pointers:
Define two pointers based on the problem type:
- One at the beginning (left), one at the end (right) → Used for sorted arrays, palindrome checking, or two-sum problems.
- Both starting at different locations and moving together → Used in merging lists or cycle detection.
- One moving ahead while the other lags behind → Used in the sliding window approach.

### Move the Pointers Based on Conditions:
Adjust left and right based on problem-specific constraints.
- If a match is found, return or store the result.
- If necessary, update values (e.g., max, min, or count).

### Continue Until a Stopping Condition is Met:
Usually, the condition is `left < right` or `right < length of array`.

## Generic Pseudocode

```plaintext
function twoPointers(arr):
    left = 0
    right = length(arr) - 1

    while left < right:
        if condition_met(arr[left], arr[right]):
            // Process the current pair
            return result

        if need_to_move_left():
            left += 1  // Move left pointer

        else:
            right -= 1 // Move right pointer

    return final_result

```
## Variants of Two Pointers

### 1️⃣ Opposite Directions (Two Sum, Palindrome Check)
**Use Case:** Searching for a pair in a sorted array.  
**Movement:** One pointer starts from the beginning (left), the other from the end (right), moving toward each other.

**Pseudocode:**
```plaintext
left = 0
right = length(arr) - 1

while left < right:
    if arr[left] + arr[right] == target:
        return [left, right] // Found pair

    if arr[left] + arr[right] < target:
        left += 1  // Increase sum
    else:
        right -= 1 // Decrease sum
```

### 2️⃣ Same Direction (Merging Sorted Lists, Slow-Fast Pointers)
**Use Case:** Finding a middle element, merging lists, detecting cycles in linked lists.  
**Movement:** Both pointers move in the same direction, but at different speeds.

**Pseudocode (Finding Middle of Linked List):**
```plaintext
slow = head
fast = head

while fast and fast.next:
    slow = slow.next
    fast = fast.next.next

return slow  // Middle node
```

### 3️⃣ Sliding Window (Longest Substring, Removing Duplicates)
**Use Case:** Problems where we need to find a subarray or subsequence.  
**Movement:** One pointer (right) expands the window, while another (left) shrinks it when conditions are met.

**Pseudocode (Longest Substring Without Repeating Characters):**
```plaintext
left = 0
right = 0
seen = {}

while right < length(s):
    if s[right] in seen:
        left = max(left, seen[s[right]] + 1)  // Move left pointer

    seen[s[right]] = right  // Store latest index
    max_length = max(max_length, right - left + 1)

    right += 1
```

### 🔹 Summary
| Type                | Use Case                        | Pointers Movement               |
|---------------------|---------------------------------|---------------------------------|
| Opposite Directions | Two Sum (Sorted), Palindrome    | left from 0, right from n-1     |
| Same Direction      | Merging lists, Cycle Detection  | One slow, one fast              |
| Sliding Window      | Longest Substring, Unique Elements | left shrinks, right expands |

### 🔹 When to Use Two Pointers?
✅ Sorted Arrays → Searching for pairs (Two Sum, Three Sum)  
✅ Linked Lists → Finding middle element, cycle detection (Floyd’s Algorithm)  
✅ Strings → Palindrome check, Longest unique substring  
✅ Trapping Rainwater → Problems involving height differences





## Problems

### Problem 1:  Two Sum (Sorted Array)

**Problem Statement:**  
Given a sorted array and a target, find two numbers that add up to the target.

### Problem 2: Trapping Rainwater

**Problem Statement:**  
Given an array representing the heights of bars, calculate how much water can be trapped.