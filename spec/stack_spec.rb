require 'spec_helper'

RSpec.describe RPN::Stack do

  it "push" do
    stack = described_class.new
    stack.push 1
    stack.push 2
    expect(stack.size == 2).to be true
  end

  it "pop" do
    stack = described_class.new
    stack.push 1
    stack.push 2
    stack.pop
    expect(stack.size == 1).to be true
  end

end
