// 1 to n bit numbers with no consecutive 1s in binary representation.

// Question:

/*
1 to n bit numbers with no consecutive 1s in binary representation. - GeeksforGeeks
Given a number n, our task is to find all 1 to n bit numbers with no consecutive 1s in their
binary representation.

Explanation:
- We need to generate all numbers that can be represented with 1 to n bits.
- These numbers should not have consecutive 1s in their binary representation.
- For example, for n = 4, the numbers are 1, 2, 4, 5, 8, 9, 10.
  - 1 (binary: 0001)
  - 2 (binary: 0010)
  - 4 (binary: 0100)
  - 5 (binary: 0101)
  - 8 (binary: 1000)
  - 9 (binary: 1001)
  - 10 (binary: 1010)
- Note that none of these numbers have consecutive 1s in their binary representation.

Examples:
Input : n = 4
Output : 1 2 4 5 8 9 10
These are numbers with 1 to 4 bits and no consecutive ones in binary representation.

Input : n = 3
Output : 1 2 4 5
*/

#include<bits/stdc++.h>
using namespace std;

// Function to find numbers with no consecutive 1s in their binary representation
vector<int> findNumbersWithNoConsecutiveOnes(int n) {
    // Calculate the upper limit for n-bit numbers
    int maxNumber = (1 << n) - 1; // 2^n - 1
    vector<int> result;

    // Iterate through all numbers from 1 to maxNumber
    for (int num = 1; num <= maxNumber; ++num) {
        // Check if num has no consecutive 1s
        if ((num & (num >> 1)) == 0) {
            result.push_back(num);
        }
    }
    return result;
}

int main() {
    int n;
    cout << "Enter the number of bits (n): ";
    cin >> n;

    // Get the numbers with no consecutive 1s
    vector<int> numbers = findNumbersWithNoConsecutiveOnes(n);
    cout << endl;
    // Print the result
    cout << "Numbers with no consecutive 1s for n = " << n << ": ";
    cout << endl;
    for (int num : numbers) {
        cout << num << " ";
    }
    cout << endl;

    return 0;
}