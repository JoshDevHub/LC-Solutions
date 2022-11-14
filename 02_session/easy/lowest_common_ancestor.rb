# frozen_string_literal: true

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  return p if root.val == p.val
  return q if root.val == q.val

  return root if root.val > p.val != root.val > q.val

  if root.val > p.val
    lowest_common_ancestor(root.left, p, q)
  else
    lowest_common_ancestor(root.right, p, q)
  end
end

# 5min

# NOTES
# algorithm: DFS
# time: O(log n)
# space: O(log n)

# take advantage of BST ordering to logically determine ancestors
