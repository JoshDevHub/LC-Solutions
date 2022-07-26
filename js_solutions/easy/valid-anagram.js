const isValidAnagram = (s, t) => {
  return s.split('').sort().join('') === t.split('').sort().join('');
}
