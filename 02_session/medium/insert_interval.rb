# frozen_string_literal: true

# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
# naive attempt
def naive_insert(intervals, new_interval)
  intervals << new_interval
  intervals.sort_by!(&:first)

  output = []
  intervals.each do |int1, int2|
    if output.empty? || output[-1][1] < int1
      output << [int1, int2]
    else
      output[-1][1] = [output[-1][1], int2].max
    end
  end
  output
end

# 25min

# smarter solution
def insert(intervals, new_interval)
  output = []

  # iterate with index because one case can be greedy & return early
  intervals.each_with_index do |(int1, int2), idx|
    new1, new2 = new_interval

    # with this case, new_int has been passed. add new_int to output and return
    #   rest of intervals
    if new2 < int1
      output << new_interval
      return output + intervals[idx..]
    # with this case, new_int hasn't been reached. move current int to output
    elsif new1 > int2
      output << [int1, int2]
    # generalized case for resetting new_interval
    else
      new_interval = [
        [new1, int1].min,
        [new2, int2].max
      ]
    end
  end
  # if the early return wasn't triggered, new_interval is tacked on to the end
  output << new_interval
end

# NOTES
# algo/structure: arrays, sorted arrays
# time: good: O(n) | naive: O(nlogn)
# space: O(n)

# Commented good solution. Need to practice this problem
