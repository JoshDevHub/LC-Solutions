# frozen_string_literal: true

class Node
  attr_accessor :val, :neighbors

  def initialize(val = 0, neighbors = nil)
    @val = val
    neighbors = [] if neighbors.nil?
    @neighbors = neighbors
  end
end

def clone_graph(node)
  Marshal.load(Marshal.dump(node))
end
