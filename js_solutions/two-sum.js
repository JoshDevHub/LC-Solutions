function twoSum(nums, target) {
  const map = {};
  for (let i = 0; i < nums.length; i++) {
    const difference = target - nums[i];
    if (difference in map) return [map[difference], i];

    map[nums[i]] = i;
  }
}

console.log(twoSum([3, 3], 6)); // [0, 1]
