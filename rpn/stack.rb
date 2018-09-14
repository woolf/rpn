module RPN
  class Stack
    def initialize
      @stack = []
    end

    def push operand
      @stack.push operand
    end

    def pop
      @stack.pop
    end

    def size
      @stack.size
    end
  end
end
