module RPN
  module Adapters
    class Stdio < Abstract

      def initialize argv
        # no arguments for this
      end

      def read
        $stdin.read
      end

      def readline
        $stdin.readline.gsub(/\n$/, "")
      end

      def write data
        $stdout.write data
      end

      def writeline data
        $stdout.write "#{data}\n"
      end

      def prompt
        write "> "
      end
    end
  end
end
