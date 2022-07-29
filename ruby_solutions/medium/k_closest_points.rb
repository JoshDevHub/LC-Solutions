# frozen_string_literal: true

def k_closest(points, k)
  points
    .sort_by! { |(a, b)| (a**2) + (b**2) }
    .first(k)
end
