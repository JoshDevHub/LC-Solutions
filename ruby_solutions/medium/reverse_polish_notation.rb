# frozen_string_literal: true

# 22 minutes

add = ->(n1, n2) { n1 + n2 }
subtract = ->(n1, n2) { n1 - n2 }
multiply = ->(n1, n2) { n1 * n2 }
divide = lambda do |n1, n2|
  float_quotient = n1.to_f / n2
  float_quotient >= 0 ? float_quotient.floor : float_quotient.ceil
end

OPERATOR_OPERATION_MAP = {
  "+" => add,
  "-" => subtract,
  "*" => multiply,
  "/" => divide
}.freeze

def eval_rpn(tokens)
  numbers_stack = []
  tokens.each do |token|
    if OPERATOR_OPERATION_MAP.key?(token)
      first_op, second_op = numbers_stack.pop(2)
      eval = OPERATOR_OPERATION_MAP[token].call(first_op, second_op)
      numbers_stack << eval
    else
      numbers_stack << token.to_i
    end
  end
  numbers_stack[0]
end
