const isAlphaNum = (charCode) => {
  return (97 <= charCode && charCode <= 122) ||
         (48 <= charCode && charCode <= 57);
}

const isPalindrome = (string) => {
  const alphaNumChars = [];
  for (let char of string.toLowerCase()) {
    if (isAlphaNum(char.charCodeAt())) alphaNumChars.push(char);
  }
  return alphaNumChars.join('') === alphaNumChars.reverse().join('');
}
