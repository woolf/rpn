module RPN
  module Adapters
    class Abstract
      def read
        raise "Not implemented"
      end

      def readline
        raise "Not implemented"
      end

      def write data
        raise "Not implemented"
      end

      def writeline data
        raise "Not implemented"
      end

      def prompt
        raise "Not implemented"
      end
    end
  end
end
