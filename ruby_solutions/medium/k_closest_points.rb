# frozen_string_literal: true

def k_closest(points, k)
  points
    .sort! { |(a, b), (x, y)| (a**2) + (b**2) <=> (x**2) + (y**2) }
    .first(k)
end
