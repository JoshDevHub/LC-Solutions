# frozen_string_literal: true

def num_islands(grid)
  Grid.new(grid).count_islands
end

class Grid
  def initialize(multi_array)
    @multi_array = multi_array
    @row_size = @multi_array.length
    @col_size = @multi_array[0].length
  end

  def count_islands
    islands = 0
    grid.each_with_index do |row, row_num|
      row.each_with_index do |bit, col_num|
        next unless bit == "1"

        bfs(row_num, col_num)
        islands += 1
      end
    end
    islands
  end

  def bfs
    queue = [[row, col]]
    until queue.empty?
      curr_row, curr_col = queue.shift
      directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]
      directions.each do |(dr, dc)|
        new_r = curr_row + dr
        new_c = curr_col + dc
        next unless enqueue_position?(new_r, new_c)

        queue << [new_r, new_c]
        grid[new_r, new_c] = -1
      end
    end
  end

  def enqueue_position?(row, col)
    (0...row_size).cover?(row) && (0...col_size).cover?(col) &&
      multi_array[row][col] == "1"
  end
end
