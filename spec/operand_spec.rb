require 'spec_helper'

RSpec.describe RPN::Operand do

  it "valid int" do
    operand = described_class.new("1")
    expect(operand.value == 1).to be true
  end

  it "valid float" do
    operand = described_class.new("5.12")
    expect(operand.value == 5.12).to be true
    expect(operand.value.class == Float).to be true
  end

  it "invalid operand" do
    expect {
      operand = described_class.new("hi!")
    }.to raise_error(NameError)
  end
end
