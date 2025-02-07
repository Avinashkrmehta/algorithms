/*
Problem Statement
Given a string, find the length of the longest substring that does not contain repeating characters.

Approach
Use a hash map (or set) to track the characters in the current window.
Expand the window by adding characters until a duplicate is found.
Shrink the window from the left until the duplicate is removed.
Keep track of the maximum window size.

*/

#include<bits/stdc++.h>
using namespace std;

int lengthOfLongestSubstring(string s) {
    int n = s.size();
    int ans = 0;
    unordered_map<char, int> mp;
    for (int i = 0, j = 0; j < n; j++) {
        if (mp.find(s[j]) != mp.end()) {
            i = max(mp[s[j]], i);
        }
        ans = max(ans, j - i + 1);
        mp[s[j]] = j + 1;
    }
    return ans;
}

int longestUniqueSubstring(string s) {
    unordered_set<char> charSet;
    int left = 0, maxLength = 0;

    for (int right = 0; right < s.length(); right++) {
        while (charSet.find(s[right]) != charSet.end()) {
            charSet.erase(s[left]);
            left++;
        }
        charSet.insert(s[right]);
        maxLength = max(maxLength, right - left + 1);
    }

    return maxLength;
}


int main() {
    string s = "abcabcbb";
    cout << lengthOfLongestSubstring(s) << endl;  // Output: 3
    cout << longestUniqueSubstring(s) << endl;    // Output: 3
    return 0;
}