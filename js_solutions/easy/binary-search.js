const binarySearch = (nums, target) => {
  let start = 0;
  let end = nums.length - 1;

  while (start <= end) {
    const midIndex = Math.floor(start + (end - start) / 2);
    const midElement = nums[midIndex];
    if (midElement === target) return midIndex;

    if (midElement < target) {
      start = midIndex + 1;
    } else {
      end = midIndex - 1;
    }
  }
  return -1;
}
