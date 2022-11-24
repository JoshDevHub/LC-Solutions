# frozen_string_literal: true

require "set"

# @param {String} s
# @return {Integer}
# naive
def length_of_longest_substring(s)
  cache = {}
  total = 0
  running_total = 0
  i = 0

  while i < s.length
    char = s[i]
    if cache.key?(char)
      total = [running_total, total].max
      running_total = 0
      i = cache[char] + 1
      cache.clear
    else
      cache[char] = i
      running_total += 1
      i += 1
    end
  end
  [total, running_total].max
end

# smarter
def length_of_longest_substring(s)
  char_set = Set.new
  l = 0
  max_len = 0

  s.length.times do |r|
    while char_set.include?(s[r])
      char_set.delete(s[l])
      l += 1
    end

    char_set.add(s[r])
    max_len = [max_len, r - l + 1]
  end
  max_len
end

# 10min

# NOTES
# algo/structure: set, string
# time: naive: O(n^2) optimal: O(n)
# space: O(n)
