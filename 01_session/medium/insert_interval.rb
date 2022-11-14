# frozen_string_literal: true

def insert(intervals, new_interval)
  intervals.push(new_interval).sort_by!(&:first)
  merge_intervals(intervals)
end

def merge_intervals(intervals)
  stack = []
  merge_list = []
  intervals.each do |interval|
    if stack.empty?
      stack << interval
    else
      handle_merge(interval:, stack:, merge_list:)
    end
  end
  merge_list + stack
end

def handle_merge(interval:, stack:, merge_list:)
  stack_first, stack_last = stack.pop
  if interval.first <= stack_last
    new_stack_last = interval.last > stack_last ? interval.last : stack_last
    stack << [stack_first, new_stack_last]
  else
    merge_list << [stack_first, stack_last]
    stack << interval
  end
end
