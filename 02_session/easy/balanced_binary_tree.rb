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
# @return {Boolean}
def balanced?(root)
  return true if root.nil?

  balance_check(root) != -1
end

def balance_check(node)
  return 0 if node.nil?

  left_check = balance_check(node.left)
  right_check = balance_check(node.right)

  return -1 if left_check == -1 || right_check == -1

  diff = (left_check - right_check).abs
  diff > 1 ? -1 : [left_check, right_check].max + 1
end

# 20min

# NOTES
# algo/structure: binary tree, dfs
# time: O(n)
# space: O(n)

# important to avoid creating another recursive step -- commonly done with the
#   height diff checking
