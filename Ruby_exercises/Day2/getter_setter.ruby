class Formatter
  def initialize(indent_level = 0)
    @indent_level = indent_level
  end

  def text(string)
    indent + string
  end

  def indent
    " " * @indent_level
  end

  def deb_cred(int)
    int.each do |num|
      if num.to_i > 0
        puts num.rjust(27) #+ " debit"

      elsif num.to_i < 0
        puts num.rjust(4) #+ " credit"
      else
        puts num.rjust(15) #+ " neither"
      end
    end
  end
end

formatter1 = Formatter.new(2)
puts formatter1.text("This is indented 2 spaces")

formatter2 = Formatter.new(4)
puts formatter2.text("This is indented 4 spaces")

numbers = Formatter.new(8)
puts "Credits                 Debits"
puts "------------------------------"
numbers.deb_cred(["5", "4", "0", "-10", "15", "-9", "2", "12", "-1"])
