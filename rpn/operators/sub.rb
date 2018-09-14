module RPN
  module Operators
    class Sub
      def self.exec op1, op2
        op1 - op2
      end
    end
  end
end