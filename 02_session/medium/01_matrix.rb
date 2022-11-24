# frozen_string_literal: true

require "set"

DIRECTIONS = [
  [0, 1], [0, -1],
  [1, 0], [-1, 0]
].freeze

# @param {Integer[][]} mat
# @return {Integer[][]}
def update_matrix_bfs(mat)
  q = Queue.new
  visited = Set.new

  mat.length.times do |row_i|
    mat[0].length.times do |col_i|
      if mat[row_i][col_i].zero?
        q << [row_i, col_i, 0]
        visited << [row_i, col_i]
      end
    end
  end

  until q.empty?
    curr_r, curr_c, dist = q.deq

    mat[curr_r][curr_c] = dist
    DIRECTIONS.each do |dr, dc|
      enq_r, enq_c = dr + curr_r, dc + curr_c

      if enq_r >= 0 && enq_r < mat.length &&
         enq_c >= 0 && enq_c < mat[0].length &&
         !visited.include?([enq_r, enq_c])
        q << [enq_r, enq_c, dist + 1]
        visited << [enq_r, enq_c]
      end
    end
  end
  mat
end

# timeout first try
# 25min second try

def update_matrix_dp(mat)
  m, n = mat.length, mat[0].length

  m.times do |r|
    n.times do |c|
      next if mat[r][c].zero?

      top = r.positive? ? mat[r - 1][c] : Float::INFINITY
      left = c.positive? ? mat[r][c - 1] : Float::INFINITY
      mat[r][c] = [top, left].min + 1
    end
  end

  (m - 1).downto(0) do |r|
    (n - 1).downto(0) do |c|
      next if mat[r][c].zero?

      bottom = r < m - 1 ? mat[r + 1][c] : Float::INFINITY
      right = c < n - 1 ? mat[r][c + 1] : Float::INFINITY
      mat[r][c] = [mat[r][c], bottom + 1, right + 1].min
    end
  end
  mat
end

# NOTES
# algo/structure: bfs, queue, 2d arrays, dp
# time: O(MxN)
# space: bfs: O(MxN) dp: O(1)

# The dynamic programming solution performs quite a bit better than the more
#   obvious BFS solution. Will need to practice it.
