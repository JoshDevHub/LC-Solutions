# frozen_string_literal: true

require "set"

def can_finish?(num_courses, prereqs)
  pre_map = (0..num_courses).to_h { |n| [n, []] }
  prereqs.each { |(course, prereq)| pre_map[course] << prereq }
  visit_set = Set.new
  (0..num_courses).each do |course|
    return false unless dfs(course, visit_set, pre_map)
  end
  true
end

def dfs(course, visit_set, pre_map)
  return false if visit_set.include?(course)
  return true if pre_map[course].empty?

  visit_set.add(course)
  pre_map[course].each do |prereq|
    return false unless dfs(prereq)
  end
  visit_set.delete(course)
  pre_map[course].clear
  true
end
