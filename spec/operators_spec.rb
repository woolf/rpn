require 'spec_helper'

include RPN::Operators

RSpec.describe RPN::Operators do

  it "addition" do
    expect(Sum.exec(2, 3) == 5).to be true
  end

  it "multiply" do
    expect(Mul.exec(2, 2) == 4).to be true
  end

  it "subtract" do
    expect(Sub.exec(2, 2) == 0).to be true
  end

  it "division" do
    expect(Div.exec(5, 2) == 2.5).to be true
  end

end
