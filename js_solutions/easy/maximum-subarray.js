const maxSubArray = (nums) => {
  let runningTotal = nums[0]

  nums.reduce((maxSum, num) => {
    runningTotal = Math.max(num, runningTotal + num);
    return Math.max(maxSum, runningTotal);
  })
}
