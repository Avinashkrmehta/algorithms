# Algorithm Patterns and Techniques

This document provides an overview of common algorithmic patterns and techniques used to solve various computational problems efficiently. Each pattern includes a key idea and example problems.

## 1. Sliding Window
Used for problems involving subarrays or substrings.
- **Key idea**: Use a sliding window to optimize time complexity from O(n^2) to O(n).
- **Example Problems**:
  - Longest Substring Without Repeating Characters
  - Maximum Sum Subarray of Size K

## 2. Two Pointers
Used for problems involving sorted arrays, linked lists, or string manipulation.
- **Key idea**: Use two pointers moving towards/away from each other.
- **Example Problems**:
  - Two Sum (Sorted Array)
  - Trapping Rainwater

## 3. Fast and Slow Pointers
Used for cyclic problems like finding loops in linked lists.
- **Key idea**: Use two pointers moving at different speeds.
- **Example Problems**:
  - Linked List Cycle Detection
  - Middle of a Linked List

## 4. Merge Intervals
Used for problems involving overlapping intervals.
- **Key idea**: Sort intervals and merge based on conditions.
- **Example Problems**:
  - Merge Intervals
  - Insert Interval

## 5. Cyclic Sort
Used for problems involving numbers in a given range (1 to n).
- **Key idea**: Place each number at its correct index.
- **Example Problems**:
  - Missing Number
  - Find All Duplicate Numbers

## 6. Subsets
Used for problems requiring all combinations/subsets of elements.
- **Key idea**: Use BFS, recursion, or bitmasking.
- **Example Problems**:
  - Generate All Subsets
  - Generate Permutations

## 7. Binary Search
Used for searching in sorted arrays or answer-based problems.
- **Key idea**: Divide and conquer; halve the search space.
- **Example Problems**:
  - Search in Rotated Sorted Array
  - Find Peak Element

## 8. Backtracking
Used for constraint-based problems like permutations and combinations.
- **Key idea**: Try all possibilities and backtrack upon failure.
- **Example Problems**:
  - N-Queens
  - Word Search

## 9. Breadth-First Search (BFS)
Used for shortest path or level-order traversal problems.
- **Key idea**: Explore all neighbors at the current level before moving to the next level.
- **Example Problems**:
  - Binary Tree Level Order Traversal
  - Word Ladder

## 10. Depth-First Search (DFS)
Used for pathfinding, tree/graph traversal, and connected components.
- **Key idea**: Recursively or iteratively explore each path fully.
- **Example Problems**:
  - All Paths in a Graph
  - Number of Islands

## 11. Topological Sort
Used for problems with dependencies in a Directed Acyclic Graph (DAG).
- **Key idea**: Use BFS or DFS to order tasks based on prerequisites.
- **Example Problems**:
  - Course Schedule
  - Alien Dictionary

## 12. Union-Find (Disjoint Set)
Used for connectivity in graphs.
- **Key idea**: Use union and find operations to manage connected components.
- **Example Problems**:
  - Number of Connected Components
  - Redundant Connection

## 13. Greedy
Used for optimization problems (minimizing/maximizing something).
- **Key idea**: Make the locally optimal choice at each step.
- **Example Problems**:
  - Interval Scheduling
  - Huffman Encoding

## 14. Dynamic Programming (DP)
Used for optimization and decision-based problems.
- **Key idea**: Break the problem into overlapping subproblems.
- **Example Problems**:
  - Longest Increasing Subsequence
  - 0/1 Knapsack

## 15. Bit Manipulation
Used for binary-related problems like subsets and XOR.
- **Key idea**: Use bitwise operators to solve efficiently.
- **Example Problems**:
  - Single Number
  - Power of Two

## 16. Matrix Traversal
Used for problems involving grid traversal.
- **Key idea**: Use BFS, DFS, or dynamic programming.
- **Example Problems**:
  - Unique Paths
  - Rotting Oranges

## 17. Heap / Priority Queue
Used for problems requiring frequent max/min operations.
- **Key idea**: Use heaps for efficient insertion and extraction.
- **Example Problems**:
  - Kth Largest Element
  - Merge K Sorted Lists

## 18. Divide and Conquer
Used for problems involving partitioning.
- **Key idea**: Divide the problem into smaller subproblems.
- **Example Problems**:
  - Merge Sort
  - Median of Two Sorted Arrays

## 19. Prefix Sum
Used for problems involving range sums.
- **Key idea**: Precompute cumulative sums to optimize queries.
- **Example Problems**:
  - Subarray Sum Equals K
  - Range Sum Query (Immutable)

## 20. Kadane's Algorithm
Used for maximum subarray problems.
- **Key idea**: Maintain a running sum and update the max sum.
- **Example Problems**:
  - Maximum Subarray Sum

## 21. Trie (Prefix Tree)
Used for word-related problems.
- **Key idea**: Use a tree structure for fast prefix lookups.
- **Example Problems**:
  - Implement Trie
  - Word Search II

## 22. Segment Tree
Used for range query problems.
- **Key idea**: Build a tree structure for efficient range queries and updates.
- **Example Problems**:
  - Range Sum Query
  - Range Minimum Query

## 23. Graph Traversal
Used for graph-related problems like shortest paths or connected components.
- **Key idea**: Use DFS, BFS, or Dijkstra's algorithm.
- **Example Problems**:
  - Shortest Path in Weighted Graph
  - Minimum Spanning Tree

## 24. Flood Fill
Used for grid-based coloring or connected regions.
- **Key idea**: Use DFS or BFS to visit all connected components.
- **Example Problems**:
  - Flood Fill
  - Number of Enclaves

## 25. Monotonic Stack
Used for problems involving nearest larger/smaller elements.
- **Key idea**: Use a stack to maintain a monotonic sequence.
- **Example Problems**:
  - Next Greater Element
  - Largest Rectangle in Histogram

## 26. String Matching (KMP, Rabin-Karp)
Used for finding substrings in a string.
- **Key idea**: Use efficient string matching algorithms.
- **Example Problems**:
  - Substring Search
  - Shortest Palindrome


## 27. Binary Indexed Tree (Fenwick Tree)
**Used for:** Dynamic range sum/updates.

- **Key Idea:** Use a tree structure to efficiently compute prefix sums.
- **Example Problems:**
  - Range Sum Query
  - Count of Smaller Numbers After Self


## 28. Reservoir Sampling
**Used for:** Random sampling.

- **Key Idea:** Keep track of `k` items randomly while iterating.
- **Example Problems:**
  - Random Node in a Linked List
  - Random Sampling


## 29. LRU Cache
**Used for:** Caching problems.

- **Key Idea:** Use a hashmap and doubly linked list.
- **Example Problems:**
  - LRU Cache Implementation
  - LFU Cache


## 30. Fibonacci Sequence
**Used for:** Dynamic programming (DP) problems.

- **Key Idea:** Compute Fibonacci numbers iteratively or using matrix exponentiation.
- **Example Problems:**
  - Climbing Stairs
  - House Robber


## 31. Game Theory
**Used for:** Competitive game problems.

- **Key Idea:** Use minimax or DP to determine the winner.
- **Example Problems:**
  - Nim Game
  - Predict the Winner


## 32. Mathematical Problems
**Used for:** Number theory and combinatorics.

- **Key Idea:** Use properties of numbers for optimization.
- **Example Problems:**
  - GCD and LCM
  - Combination Sum


