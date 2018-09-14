module RPN
  class Operand

    attr_reader :value

    def initialize str
      unless RPN.is_operand? str
        raise StandardError "Not valid operand"
      end

      if (/\./ === str)
        @value = Float(str)
      else
        @value = str.to_i
      end
    end
  end
end
