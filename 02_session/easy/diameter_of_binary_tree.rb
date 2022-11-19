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
def diameter_of_binary_tree(root)
  @diameter = 0
  calculate_diameter(root)
  @diameter
end

def calculate_diameter(node)
  return 0 if node.nil?

  left_height = calculate_diameter(node.left)
  right_height = calculate_diameter(node.right)

  @diameter = [@diameter, left_height + right_height].max
  [left_height, right_height].max + 1
end

# 15min

# NOTES
# algo/structure: binary tree, dfs
# time: O(n)
# space: O(h)

# Similar to height but just with the wrinkle of tracking diameter along the way.
