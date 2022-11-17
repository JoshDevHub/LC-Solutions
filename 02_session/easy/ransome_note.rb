# frozen_string_literal: true

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  magazine_tally = magazine.each_char.tally
  ransom_tally = ransom_note.each_char.tally

  ransom_tally.each do |char, count|
    next if magazine_tally.key?(char) && magazine_tally[char] >= count

    return false
  end
  true
end

# 5min

# NOTES
# algo/structure: strings, hashmap, frequency hash
# time: O(m + n)
# space: O(m + n)

# Pretty simple frequency hash problem
