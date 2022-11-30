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
# @return {Integer[][]}
def level_order(root)
  q = root ? [root] : []

  results = []

  until q.empty?
    curr_list = q.pop(q.length)
    res_list = []
    curr_list.each do |node|
      res_list << node.val
      q << node.left if node.left
      q << node.right if node.right
    end
    results << res_list
  end
  results
end

# 10min

# NOTES
# algo/structure: queue, bfs, binary tree
# time: O(n)
# space: O(n)
