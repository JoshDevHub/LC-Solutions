function isValid(string) {
  const stack = [];
  const matchingPairs = { "(": ")", "[": "]", "{": "}" };
  for (char of string) {
    if (Object.keys(matchingPairs).includes(char)) {
      stack.push(char);
    } else {
      const lastOpen = stack.pop();
      if (matchingPairs[lastOpen] !== char) return false;
    }
  }
  return stack.length === 0;
}
