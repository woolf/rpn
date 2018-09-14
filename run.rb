$LOAD_PATH << "."

require 'optparse'
require "rpn"

include RPN

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: run.rb [options]"

  opts.on("--io Adapter", String, "Select IO adapter", "Stdio") do |io|
    options[:io] = io
  end
end.parse!

if options[:io] == "Stdio"
  console = Adapters::Stdio.new options
else
  console = Adapters::Stdio.new options
end

stack = Stack.new

console.writeline "Type q to quit"

console.prompt

while true
  line = console.readline

  break if line == 'q'

  if RPN.is_operator? line
    if stack.size < 2
      console.writeline "Not enough operands"
    else
      operator = RPN.get_operator line
      op2 = stack.pop
      op1 = stack.pop
      begin
        result = operator.exec op1, op2
        console.writeline result
        stack.push result
      rescue
        stack.push op1
        stack.push op2
        console.writeline $!.message
      end
    end
  elsif RPN.is_operand? line
    operand = Operand.new line
    console.writeline operand.value
    stack.push operand.value
  else
    console.writeline "Command not accepted"
  end

  console.prompt
end
