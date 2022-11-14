# frozen_string_literal: true

# @param {String} s
# @param {String} t
# @return {Boolean}
def anagram?(s, t)
  s.each_char.tally == t.each_char.tally
end

# NOTES
# algo/structure: strings, count-hash
# time: O(n * m)
# space: O(n * m)

# made pretty trivial by ruby's #tally method
