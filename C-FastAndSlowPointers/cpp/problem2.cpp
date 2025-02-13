/*
Finding the Middle Element of a Linked List
We can efficiently find the middle node of a singly linked list using the Fast and Slow Pointers technique.

Approach: Fast and Slow Pointers
Explanation
  We use two pointers:
    slow moves one step at a time.
    fast moves two steps at a time.
When fast reaches the end of the list (i.e., fast == nil or fast.next == nil),
  slow will be at the middle node of the list.
Steps
  Initialize two pointers:
    slow = head
    fast = head
  Traverse the list:
    Move slow one step (slow = slow.next).
    Move fast two steps (fast = fast.next.next).
Stop when fast reaches nil or fast.next == nil.
The slow pointer now points to the middle element.

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

Node* findMiddle(Node* head) {
    Node* slow = head;
    Node* fast = head;
    while (fast != NULL && fast->next != NULL) {
        slow = slow->next;
        fast = fast->next->next;
    }
    return slow;
}

int main() {
    Node* head = new Node(1);
    head->next = new Node(2);
    head->next->next = new Node(3);
    head->next->next->next = new Node(4);
    head->next->next->next->next = new Node(5);
    head->next->next->next->next->next = new Node(6);
    cout << "Middle: " << findMiddle(head)->value << endl;

    head->next->next->next->next->next->next = new Node(7);
    cout << "Middle: " << findMiddle(head)->value << endl;
}

// Time Complexity: O(N)
// Space Complexity: O(1)
// N = number of nodes in the linked list
// The above algorithm has O(N) time complexity where N is the number of nodes in the linked list.
// The algorithm uses constant space O(1) as it only uses two pointers.
// The algorithm can be used to find the middle element of a linked list in a single pass.
