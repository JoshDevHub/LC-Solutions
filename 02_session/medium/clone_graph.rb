# frozen_string_literal: true

# Definition for a Node.
# class Node
#     attr_accessor :val, :neighbors
#     def initialize(val = 0, neighbors = nil)
#		  @val = val
#		  neighbors = [] if neighbors.nil?
#         @neighbors = neighbors
#     end
# end

# @param {Node} node
# @return {Node}
def cloneGraph(node)
  @seen = {}

  node ? dfs(node) : node
end

def dfs(node)
  return @seen[node] if @seen.key?(node)

  clone = Node.new(node.val)
  @seen[node] = clone
  node.neighbors.each do |neighbor|
    clone_neighbors = dfs(neighbor)
    clone.neighbors << clone_neighbors
  end
  clone
end

# non-algorithmic but very quick and easy
# probably what I'd lean towards when I want a deep clone in a real project
def clone_graph(node)
  Marshal.load(Marshal.dump(node))
end

# 15min

# NOTES
# algo/structure: graph, dfs
# time: O(V+E)
# space: O(V)
