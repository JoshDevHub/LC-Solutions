namespace TwoSum
{
    public class Solution
    {
        public int[] TwoSum(int[] nums, int target)
        {
            var diffMap = new Dictionary<int, int>();
            for (int i = 0; i < nums.Length; i++)
            {
                int difference = target - nums[i];
                if (diffMap.ContainsKey(difference))
                {
                    return new int[] { diffMap[difference], i };
                }
                diffMap.Add(difference, i);
            }
            return new int[] { -1, -1 };
        }
    }
}
