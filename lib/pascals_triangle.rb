class PascalsTriangle
    def initialize
        @triangle = [[1]]
    end

    def triangle_row(row_num)
        return @triangle[row_num] if @triangle[row_num]
        old_row = triangle_row(row_num - 1)
        @triangle[row_num] = calculate(old_row)
    end

    def calculate(old_row)
        middle = []
        (old_row.length - 1).times do |i|
            middle.push(old_row[i] + old_row[i + 1])
        end
        rows = [1, middle, 1].flatten
        rows
    end

    def draw(input)
        (input).times { |rows| p PascalsTriangle.new.to_s(rows) }
    end

    def to_s(row_num)
        triangle_row(row_num).join(" ").center(40)
    end
end
