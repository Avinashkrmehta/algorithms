
#include<bits/stdc++.h>
using namespace std;

vector<vector<int>> merge(vector<vector<int>>& intervals) {
    if (intervals.empty()) return {};

    // Sort the intervals based on their starting points
    sort(intervals.begin(), intervals.end());

    // Initialize the result array
    vector<vector<int>> result;
    result.push_back(intervals[0]);

    // Iterate through the sorted intervals and merge them
    for (int i = 1; i < intervals.size(); ++i) {
        vector<int>& current_interval = intervals[i];
        vector<int>& last_interval = result.back();

        if (current_interval[0] <= last_interval[1]) {
            // Merge the current interval with the last interval
            last_interval[1] = max(last_interval[1], current_interval[1]);
        } else {
            // Add the current interval to the result
            result.push_back(current_interval);
        }
    }

    return result;
}

int main() {
    vector<vector<int>> intervals1 = {{1, 3}, {2, 6}, {8, 10}, {15, 18}};
    vector<vector<int>> result1 = merge(intervals1);
    for (const auto& interval : result1) {
        cout << "[" << interval[0] << "," << interval[1] << "] ";
    }
    cout << endl;

    vector<vector<int>> intervals2 = {{1, 4}, {4, 5}};
    vector<vector<int>> result2 = merge(intervals2);
    for (const auto& interval : result2) {
        cout << "[" << interval[0] << "," << interval[1] << "] ";
    }
    cout << endl;

    vector<vector<int>> intervals3 = {{1, 4}, {0, 4}};
    vector<vector<int>> result3 = merge(intervals3);
    for (const auto& interval : result3) {
        cout << "[" << interval[0] << "," << interval[1] << "] ";
    }
    cout << endl;

    return 0;
}