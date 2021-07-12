require_relative "pascals_triangle"

begin
    print "How many rows would you like the triangle to have? "
    input = Integer(gets.chomp)
rescue
    puts "Please enter a whole number(an Integer)."
    retry
end

PascalsTriangle.new().draw(input)
