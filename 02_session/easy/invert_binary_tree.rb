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
# @return {TreeNode}
def invert_tree(root)
  return root if root.nil?

  root.left, root.right = root.right, root.left

  invert_tree(root.left)
  invert_tree(root.right)
  root
end

# 5min

# NOTES
# algo/structure: binary tree, DFS
# time: O(n)
# space: O(n)

# simple DFS problem
