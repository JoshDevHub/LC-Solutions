# frozen_string_literal: true

def directions_for(sr, sc, image)
  direction_list = [
    [sr + 1, sc], [sr - 1, sc],
    [sr, sc + 1], [sr, sc - 1]
  ]
  y_range = (0...image.size)
  x_range = (0...image[0].size)
  direction_list.select { |(y, x)| y_range.cover?(y) && x_range.cover?(x) }
end

def flood_fill(image, sr, sc, color)
  original_color = image[sr][sc]
  return image if original_color == color

  directions = directions_for(sr, sc, image)
  image[sr][sc] = color
  directions.each do |(y, x)|
    next unless image[y][x] == original_color

    flood_fill(image, y, x, color)
  end
  image
end
