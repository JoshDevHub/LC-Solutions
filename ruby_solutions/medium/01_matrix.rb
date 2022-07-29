# frozen_string_literal: true

require "set"

def update_matrix(mat)
  queue, visited = init_structures(mat)
  bfs(queue, visited, mat)
  mat
end

def bfs(queue, visited, matrix)
  directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]
  until queue.empty?
    queue.size.times do
      i, j = queue.shift
      directions.each do |(r, c)|
        new_i = i + r
        new_j = j + c
        next if visited.include?([new_i, new_j]) || invalid_indices?(new_i, new_j, matrix)

        queue << [new_i, new_j]
        visited.add([new_i, new_j])
        matrix[new_i][new_j] = matrix[i][j] + 1
      end
    end
  end
end

def invalid_indices?(test_i, test_j, matrix)
  row_size = matrix.size
  col_size = matrix[0].size
  test_i.negative? || test_j.negative? || test_i >= row_size || test_j >= col_size
end

def init_structures(matrix)
  set = Set.new
  queue = []
  matrix.size.times do |i|
    matrix[0].size.times do |j|
      if matrix[i][j].zero?
        queue << [i, j]
        set.add([i, j])
      end
    end
  end
  [queue, set]
end
