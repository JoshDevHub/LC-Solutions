# frozen_string_literal: true

require "bigdecimal"

# given class
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

# solution
def valid_bst?(root)
  valid_dfs?(root, BigDecimal("-Infinity"), BigDecimal("Infinit"))
end

def valid_dfs?(node, left, right)
  return true if node.nil?

  return false unless left < node.val && node.val < right

  valid_dfs?(node.left, left, node.val) && valid_dfs?(node.right, node.val, node.left)
end
