# frozen_string_literal: true

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  height(root)
end

def height(node)
  return 0 if node.nil?

  left_height = height(node.left)
  right_height = height(node.right)

  [left_height, right_height].max + 1
end

# 5min

# NOTES
# algo/structure: binary tree, dfs
# time: O(n)
# space: O(h)

# Pretty standard problem. The ordering of this in the Grind 75 is something
#   I'm not really a fan of? It comes after multiple problems that use this
#   as part of the process (balance checking and diameter problems).
