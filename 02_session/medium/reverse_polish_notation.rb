# frozen_string_literal: true

OPERATIONS = {
  "+" => ->(a, b) { a + b },
  "-" => ->(a, b) { a - b },
  "*" => ->(a, b) { a * b },
  "/" => ->(a, b) { a.fdiv(b) }
}.freeze

# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
  stack = []
  tokens.each do |token|
    if OPERATIONS.key?(token)
      a, b = stack.pop(2)
      eval = OPERATIONS[token].call(a, b).to_i
      stack << eval
    else
      stack << token.to_i
    end
  end
  stack[0]
end

# 10min

# NOTES
# algo/structure: stack, array
# time: O(n)
# space: O(n)

# Fun stack problem.
