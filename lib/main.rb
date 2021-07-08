require_relative "pascals_triangle"

(5).times { |rows| p PascalsTriangle.new().triangle(rows) }
