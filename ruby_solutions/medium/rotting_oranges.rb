# frozen_string_literal: true

def oranges_rotting(grid)
  queue = []
  time = 0
  fresh_oranges = 0

  rows = grid.length
  cols = grid[0].length
  directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]

  grid.each_with_index do |row, row_i|
    row.each_with_index do |cell, col_i|
      fresh_oranges += 1 if cell == 1
      queue << [row_i, col_i] if cell == 2
    end
  end

  until queue.empty? || fresh_oranges <= 0
    rotting_coords = queue.shift(queue.length)
    rotting_coords.each do |(r, c)|
      directions.each do |(dr, dc)|
        [r + dr, c + dc] => [new_r, new_c]
        next unless new_r >= 0 && new_r < rows &&
                    new_c >= 0 && new_c < cols &&
                    grid[new_r][new_c] == 1

        grid[new_r][new_c] = 2
        queue.push([new_r, new_c])
        fresh_oranges -= 1
      end
    end
    time += 1
  end
  fresh_oranges.zero? ? time : -1
end
