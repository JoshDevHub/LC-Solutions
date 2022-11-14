# frozen_string_literal: true

def group_anagrams(strs)
  group = {}

  strs.each do |s|
    sorted = s.chars.sort.join
    group[sorted] ||= []
    group[sorted] << s
  end
  group.values
end
