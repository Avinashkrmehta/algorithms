/*
Given a linked list, determine if it has a cycle in it.
Detecting a Cycle in a Linked List (Floyd’s Cycle Detection Algorithm)
This technique is often used to determine whether a linked list contains a cycle.

Algorithm:
Initialize two pointers:
slow = head
fast = head
Move slow one step at a time and fast two steps at a time.
If fast reaches NULL, the linked list has no cycle.
If slow == fast at any point, a cycle is detected.
*/

#include<bits/stdc++.h>
using namespace std;

class Node {
public:
    int value;
    Node* next;
    Node(int value) {
        this->value = value;
        this->next = NULL;
    }
};

bool hasCycle(Node* head) {
    Node* slow = head;
    Node* fast = head;
    while (fast != NULL && fast->next != NULL) {
        slow = slow->next;
        fast = fast->next->next;
        if (slow == fast) {
            return true; // found the cycle
        }
    }
    return false;
}

int main() {
    Node* head = new Node(1);
    head->next = new Node(2);
    head->next->next = new Node(3);
    head->next->next->next = new Node(4);
    head->next->next->next->next = new Node(5);
    head->next->next->next->next->next = new Node(6);
    cout << "Has cycle: " << hasCycle(head) << endl;

    head->next->next->next->next->next->next = head->next->next;
    cout << "Has cycle: " << hasCycle(head) << endl;

    head->next->next->next->next->next->next = head->next->next->next;
    cout << "Has cycle: " << hasCycle(head) << endl;
}

// Time Complexity: O(N)
// Space Complexity: O(1)
// N = number of nodes in the linked list
// The above algorithm has O(N) time complexity where N is the number of nodes in the linked list.
// The algorithm runs in constant space O(1) because it uses only two pointers (slow and fast) to detect the cycle.
// The space complexity is O(1) because the space used by the two pointers is independent of the number of nodes in the linked list.
// Therefore, the Floyd's Cycle Detection Algorithm is an efficient way to detect cycles in a linked list without using any extra space.
// The algorithm is also known as the "Tortoise and the Hare" algorithm because the two pointers move at different speeds, similar to the fable of the tortoise and the hare.
// The algorithm is also known as Floyd's Cycle Detection Algorithm because it was discovered by Robert W. Floyd in 1967.
// The algorithm is widely used in computer science and is a fundamental technique for detecting cycles in linked lists and graphs.
// The algorithm is efficient and has a time complexity of O(N) and a space complexity of O(1), making it suitable for detecting cycles in large linked lists and graphs.
// The algorithm is also easy to implement and understand, making it a popular choice for cycle detection in linked lists and graphs.
// The algorithm is based on the principle of moving two pointers at different speeds and detecting a cycle when the two pointers meet at the same node.
// The algorithm is a simple and elegant solution to the cycle detection problem and is widely used in computer science and software development.
// The algorithm is an important tool for detecting cycles in linked lists and graphs and is used in a variety of applications, including cycle detection in data structures and algorithms.
// The algorithm is a key component of many algorithms and data structures, and is an essential technique for solving problems in computer science and software development.
// The algorithm is efficient, easy to implement, and widely used, making it a valuable tool for detecting cycles in linked lists and graphs.
// The algorithm is a fundamental technique for cycle detection and is an important concept in computer science and software development.
// The algorithm is an essential tool for solving problems in computer science and is widely used in a variety of applications, including cycle detection in linked lists and graphs.
// The algorithm is an elegant solution to the cycle detection problem and is an important technique for detecting cycles in data structures and algorithms.

/*
Dry Run of the Code:

1. Create a linked list: 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> NULL
2. Call hasCycle(head):
    - Initialize slow and fast to head (Node 1).
    - Move slow to Node 2, fast to Node 3.
    - Move slow to Node 3, fast to Node 5.
    - Move slow to Node 4, fast to NULL.
    - Return false (no cycle).

3. Create a cycle: 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 3 (cycle back to Node 3)
4. Call hasCycle(head):
    - Initialize slow and fast to head (Node 1).
    - Move slow to Node 2, fast to Node 3.
    - Move slow to Node 3, fast to Node 5.
    - Move slow to Node 4, fast to Node 3.
    - Move slow to Node 5, fast to Node 5.
    - Return true (cycle detected).

5. Create a cycle: 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 4 (cycle back to Node 4)
6. Call hasCycle(head):
    - Initialize slow and fast to head (Node 1).
    - Move slow to Node 2, fast to Node 3.
    - Move slow to Node 3, fast to Node 5.
    - Move slow to Node 4, fast to Node 4.
    - Return true (cycle detected).
*/


