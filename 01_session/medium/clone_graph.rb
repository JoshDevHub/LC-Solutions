# frozen_string_literal: true

# Given class
class Node
  attr_accessor :val, :neighbors

  def initialize(val = 0, neighbors = nil)
    @val = val
    neighbors = [] if neighbors.nil?
    @neighbors = neighbors
  end
end

# Non-Algo Solution
def clone_graph_marshal(node)
  Marshal.load(Marshal.dump(node))
end

# Algo Solution
def clone_graph(node)
  return node if node.nil?

  clone(node)
end

def clone(node, found = {})
  return found[node.val] if found.key?(node.val)

  new_node = Node.new(node.val)
  found[node.val] = new_node
  neighbor_list = node.neighbors.map do |neighbor|
    clone(neighbor, found)
  end
  new_node.neighbors = neighbor_list
  new_node
end
