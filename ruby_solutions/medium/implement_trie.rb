# frozen_string_literal: true

class Trie
  def initialize
    @root = TrieNode.new
  end

  def insert(word)
    pointer = @root
    word.each_char do |char|
      pointer.children[char] ||= TrieNode.new
      pointer = pointer.children[char]
    end
    pointer.mark_end_of_word
  end

  def search(word)
    pointer = @root
    word.each_char do |char|
      return false unless pointer.children.key?(char)

      pointer = pointer.children[char]
    end
    pointer.end_of_word?
  end

  def starts_with(prefix)
    pointer = @root
    prefix.each_char do |char|
      return false unless pointer.children.key?(char)

      pointer = pointer.children[char]
    end
    true
  end
end

class TrieNode
  attr_reader :children, :end_of_word
  alias end_of_word? end_of_word

  def initialize
    @children = {}
    @end_of_word = false
  end

  def mark_end_of_word
    @end_of_word = true
  end
end
