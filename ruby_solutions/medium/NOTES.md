# Medium Notes

## 01 Matrix

Given a matrix filled with 1s and 0s, return the distance of the nearest 0 for each cell

**Time Complexity**
O(n^2)

**Solution**
- Build queue and visit set with all zero positions
- BFS search

## Longest Substring Without Repeating Characters

Find the length of the longest substring in the given string. No character repeats.

**Time Complexity**
O(n)

**Solution**
- Sliding window
- Set to track chars in current window

## Three Sum

Given an integer array nums, return all distinct triplets that sum to 0.

**Time Complexity**  
O(n^2)

**Solution**  
- Sort input array
- Loop through input array
- Maintain a left pointer just ahead of current element and right pointer at the end of array
- Binary Search style manipulation of two pointers to find 0 sum combination
- Left pointer manipulation to avoid duplicates
