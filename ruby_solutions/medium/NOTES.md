# Medium Notes

## Three Sum

Given an integer array nums, return all distinct triplets that sum to 0.

**Time Complexity**  
O(n^2)

**Solution Pseudo**  
- Sort input array
- Loop through input array
- Maintain a left pointer just ahead of current element and right pointer at the end of array
- Binary Search style manipulation of two pointers to find 0 sum combination
- Left pointer manipulation to avoid duplicates
