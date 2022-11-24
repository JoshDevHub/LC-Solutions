# frozen_string_literal: true

# @param {Integer[][]} points
# @param {Integer} k
# @return {Integer[][]}
def k_closest(points, k)
  points.sort_by! { |(x, y)| (x**2) + (y**2) }
  points.first(k)
end

def k_closest_heap(points, k)
  heap = MinHeap.new

  points.each do |(x, y)|
    priority = (x**2) + (y**2)
    heap.insert([x, y], priority)
  end

  Array.new(k) { heap.pop }
end

# 10min

# NOTES
# algo/structure: sorting, array
# time: sort: O(nlogn) heap: O(klogn)
# space: sort: O(1) heap: O(n)

# Min heap solution uses a custom built min heap since ruby standard lib doesn't
#   implement one.
