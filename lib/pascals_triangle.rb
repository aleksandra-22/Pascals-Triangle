class PascalsTriangle
    ALIGN_CENTER = 40

    def initialize
        @triangle = [[1]]
    end

    def triangle_row(row_num)
        return @triangle[row_num] if @triangle[row_num]
        previous_row = triangle_row(row_num - 1)
        @triangle[row_num] = calculate_next_row(previous_row)
    end

    def calculate_next_row(previous_row)
        middle = []
        (previous_row.length - 1).times do |i|
            middle.push(previous_row[i] + previous_row[i + 1])
        end
        rows = [1, middle, 1].flatten
    end

    def draw(input)
        input.times { |rows| p PascalsTriangle.new.to_s(rows) }
    end

    def to_s(row_num)
        triangle_row(row_num).join(" ").center(ALIGN_CENTER)
    end
end
