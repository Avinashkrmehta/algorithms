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

