# frozen_string_literal: true

# given class
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def max_depth(root)
  return 0 if root.nil?

  height(root)
end

def height(node)
  return 0 if node.nil?

  left_height = height(node.left)
  right_height = height(node.right)

  [left_height, right_height].max + 1
end
