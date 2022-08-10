namespace BinarySearch
{
    class Solution
    {
        public int Search(int[] nums, int target)
        {
            int index = Array.BinarySearch(nums, 0, nums.Length - 1, target);
            return index < 0 ? -1 : index;
        }
    }
}
