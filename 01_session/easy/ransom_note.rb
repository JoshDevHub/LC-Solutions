# frozen_string_literal: true

def construct_note?(ransom_note, magazine)
  magazine_tally = magazine.chars.tally
  ransom_note.chars.tally.all? do |letter, count|
    magazine_tally.key?(letter) && count <= magazine_tally[letter]
  end
end
