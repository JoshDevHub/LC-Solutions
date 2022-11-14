# frozen_string_literal: true

# @param {String} s
# @return {Boolean}
def palindrome?(s)
  sanitized_string = s.downcase.tr("^a-z0-9", "")
  left = 0
  right = sanitized_string.length - 1
  while left < right
    return false unless sanitized_string[left] == sanitized_string[right]

    left += 1
    right -= 1
  end
  true
end

# NOTES
# algo/structure: strings, two-pointer
# time: O(n)
# space: O(n)

# small optimization with equality using two pointers on the sanitized string
