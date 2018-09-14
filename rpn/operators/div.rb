module RPN
  module Operators
    class Div
      def self.exec op1, op2
        raise "Division by zero" if op2 == 0
        op1.to_f / op2
      end
    end
  end
end
