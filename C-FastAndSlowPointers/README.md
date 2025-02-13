# Fast and Slow Pointers

The Fast and Slow Pointers technique, also known as the Tortoise and Hare algorithm, is a powerful approach to solve problems involving cyclic data structures, such as linked lists. The idea is to use two pointers that move at different speeds to detect cycles or find the middle of a data structure.

## General Steps
### Initialize Two Pointers:
Define two pointers:
- `slow` pointer that moves one step at a time.
- `fast` pointer that moves two steps at a time.

### Move the Pointers:
- Move the `slow` pointer by one step.
- Move the `fast` pointer by two steps.

### Detect Cycle or Find Middle:
- If there is a cycle, the `fast` pointer will eventually meet the `slow` pointer.
- If there is no cycle, the `fast` pointer will reach the end of the data structure.
- To find the middle, continue moving until the `fast` pointer reaches the end.

## Generic Pseudocode

```plaintext
function fastAndSlowPointers(head):
    slow = head
    fast = head

    while fast and fast.next:
        slow = slow.next
        fast = fast.next.next

        if slow == fast:
            return True  // Cycle detected

    return False  // No cycle
```

## Variants of Fast and Slow Pointers

### 1️⃣ Cycle Detection (Floyd’s Tortoise and Hare)
**Use Case:** Detecting cycles in a linked list.  
**Movement:** `slow` moves one step, `fast` moves two steps.

**Pseudocode:**
```plaintext
slow = head
fast = head

while fast and fast.next:
    slow = slow.next
    fast = fast.next.next

    if slow == fast:
        return True  // Cycle detected

return False  // No cycle
```

### 2️⃣ Finding Middle of Linked List
**Use Case:** Finding the middle element of a linked list.  
**Movement:** `slow` moves one step, `fast` moves two steps.

**Pseudocode:**
```plaintext
slow = head
fast = head

while fast and fast.next:
    slow = slow.next
    fast = fast.next.next

return slow  // Middle node
```

### 🔹 Summary
| Type                | Use Case                        | Pointers Movement               |
|---------------------|---------------------------------|---------------------------------|
| Cycle Detection     | Detecting cycles in linked lists| slow moves 1 step, fast moves 2 steps |
| Finding Middle      | Finding middle element in linked list | slow moves 1 step, fast moves 2 steps |

### 🔹 When to Use Fast and Slow Pointers?
✅ Linked Lists → Cycle detection (Floyd’s Algorithm)  
✅ Linked Lists → Finding middle element  

## Problems

### Problem 1: Cycle Detection in Linked List

**Problem Statement:**  
Given a linked list, determine if it has a cycle in it.

### Problem 2: Find Middle of Linked List

**Problem Statement:**  
Given a linked list, find the middle element.


Detecting the Start of a Cycle in a Linked List
Finding the Length of a Cycle in a Linked List
Reordering a Linked List (Rearrange List)