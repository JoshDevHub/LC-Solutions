# frozen_string_literal: true

# given function
def bad_version?(version, start)
  (start..).cover?(version)
end

# solution
def first_bad_version(num)
  (1..num).bsearch { |v| bad_version?(v) }
end
