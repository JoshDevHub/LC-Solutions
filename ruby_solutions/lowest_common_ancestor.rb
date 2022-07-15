# frozen_string_literal: true

class TreeNode
  include Comparable
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left = left
    @right = right
  end

  def <=>(other)
    val <=> other.val
  end

  def split_path_for?(first_node, second_node)
    (self <= first_node && self >= second_node) ||
      (self >= first_node && self <= second_node)
  end
end

def lowest_common_ancestor(root, p, q)
  return root if root.split_path_for?(p, q)

  if root < p
    lowest_common_ancestor(root.right, p, q)
  else
    lowest_common_ancestor(root.left, p, q)
  end
end
