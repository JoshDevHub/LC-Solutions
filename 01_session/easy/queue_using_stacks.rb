# frozen_string_literal: true

class MyQueue
  def initialize
    @first_stack = []
    @second_stack = []
  end

  def push(int)
    @first_stack.push(int)
  end

  def pop
    transfer_from_first_to_second if @second_stack.empty?
    @second_stack.pop
  end

  def peek
    transfer_from_first_to_second if @second_stack.empty?
    @second_stack[-1]
  end

  def empty
    @first_stack.empty? && @second_stack.empty?
  end

  private

  def transfer_from_first_to_second
    @second_stack << @first_stack.pop until @first_stack.empty?
  end
end
