# frozen_string_literal: true

class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def balanced?(root)
  return true if root.nil?

  height(root) != -1
end

def height(node)
  return 0 if node.nil?

  left_height = height(node.left)
  right_height = height(node.right)
  height_diff = (left_height - right_height).abs

  return -1 if left_height == -1 || right_height == -1 || height_diff > 1

  1 + [left_height, right_height].max
end
