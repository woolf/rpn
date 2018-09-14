$LOAD_PATH << "."

Dir.glob("rpn/**/*.rb").each do |file|
  require file.gsub(".rb", "")
end

module RPN
  SUPPORTED = {
      "+" => Operators::Sum,
      "-" => Operators::Sub,
      "/" => Operators::Div,
      "*" => Operators::Mul
  }

  def self.is_operator? str
    return true if SUPPORTED.has_key? str
    false
  end

  def self.is_operand? str
    !!(str =~ /^-?\d+(\.\d*)?$/)
  end

  def self.get_operator str
    SUPPORTED[str]
  end
end