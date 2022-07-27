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

# solution
def level_order(root)
  output = []
  return output if root.nil?

  queue = [root]
  until queue.empty?
    level_list, enqueue_list = traverse(queue)
    output << level_list
    queue = enqueue_list
  end
  output
end

def traverse(queue)
  level_list = []
  enqueue_list = []
  queue.each do |node|
    enqueue_list += [node.left, node.right].compact
    level_list << node.val
  end
  [level_list, enqueue_list]
end
