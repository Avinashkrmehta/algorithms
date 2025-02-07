/*
Problem Statement
Given an array and an integer K, find the maximum sum of any contiguous subarray of size K.

Approach
Maintain a running sum of the window of size K.
Slide the window forward by:
Adding the new element on the right.
Removing the leftmost element.
Keep track of the maximum sum encountered.

*/

#include<bits/stdc++.h>
using namespace std;

int maxSumSubarray(vector<int>& nums, int k) {
    int n = nums.size();
    int sum = 0;
    for (int i = 0; i < k; i++) {
        sum += nums[i];
    }
    int maxSum = sum;
    for (int i = k; i < n; i++) {
        sum += nums[i] - nums[i - k];
        maxSum = max(maxSum, sum);
    }
    return maxSum;
}

int main() {
    vector<int> nums = {4, 2, 1, 7, 8, 1, 2, 8, 1, 0};
    int k = 3;
    cout << maxSumSubarray(nums, k) << endl;  // Output: 16
    return 0;
}

// Time Complexity: O(N)
// Space Complexity: O(1)
// N = Number of elements in the array



