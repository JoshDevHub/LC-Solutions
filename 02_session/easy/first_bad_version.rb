# frozen_string_literal: true

# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  (1..n).bsearch { |v| is_bad_version(v) }
end

def first_bad_version_manual(n)
  left = 1
  right = n
  first_bad_version = nil

  while left <= right
    midpoint = (right + left) / 2

    if is_bad_version(midpoint)
      first_bad_version = midpoint
      right = midpoint - 1
    else
      left = midpoint + 1
    end
  end
  first_bad_version
end

# 5min

# NOTES
# algo/structure: binary search
# time: O(log n)
# space: O(1)

# Ruby builtin seems consistently slower, probably because of having to construct
#   a range.
