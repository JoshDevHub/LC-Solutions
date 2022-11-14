# frozen_string_literal: true

PAREN_PAIRS = {
  "(" => ")",
  "[" => "]",
  "{" => "}"
}.freeze

# @param {String} s
# @return {Boolean}
def valid?(s)
  stack = []
  s.each_char do |c|
    if PAREN_PAIRS.key?(c)
      stack << c
    else
      last_open = stack.pop
      return false unless PAREN_PAIRS[last_open] == c
    end
  end
  stack.empty?
end

# 5min

# NOTES
# algo/structure: stack, string
# time: O(n)
# space: O(n)

# closing bracket must match most recent open bracket -- a property that lends
#   itself well to a stack solution
