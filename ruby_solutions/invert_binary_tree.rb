# frozen_string_literal: true

# Given Class
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

# Solution function
def invert_tree(root)
  queue = []
  queue << root unless root.nil?
  until queue.empty?
    curr_node = queue.shift
    queue << curr_node.left if curr_node.left
    queue << curr_node.right if curr_node.right
    curr_node.left, curr_node.right = curr_node.right, curr_node.left
  end
  root
end
