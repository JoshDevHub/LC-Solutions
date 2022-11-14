DIRECTIONS = [
  [0, 1], [0, -1],
  [1, 0], [-1, 0],
].freeze

# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} color
# @return {Integer[][]}
def flood_fill(image, sr, sc, color)
  return image if image[sr][sc] == color

  @init_color = image[sr][sc]
  @new_color = color
  fill(image, sr, sc)
  image
end

def fill(image, sr, sc)
  return unless in_bounds?(sr, image) &&
                in_bounds?(sc, image[0]) &&
                image[sr][sc] == @init_color

  image[sr][sc] = @new_color
  DIRECTIONS.each do |dr, dc|
    fill(image, sr + dr, sc + dc)
  end
  image
end

def in_bounds?(n, array)
  0 <= n && n < array.length
end

# 20min

# NOTES
# algo/structure: array, DFS
# time: O(m * n)
# space: O(m * n)

# standard DFS
