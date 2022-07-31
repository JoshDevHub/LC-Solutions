// recursive solution
const fib = (n, memo = {}) => {
  if (n < 0) return 0;
  if (n === 0) return 1;

  memo[n] = memo[n] || fib(n - 1, memo) + fib(n - 2, memo);
  return memo[n];
}

const climbStairs = (num) => fib(num);

// iterative solution
const climbStairsIt = (num) => {
  let first = 1;
  let second = 1;
  while (num > 1) {
    [first, second] = [second, first + second];
    num--;
  }
  return second;
}
