class PascalsTriangle
    
    def initialize
        @triangle = [[1]]
    end

    def triangle(row_num)
        if @triangle[row_num]
            return @triangle[row_num]
        else
            old_row = triangle(row_num - 1)
            middle = []
            (old_row.length - 1).times do |i|
                middle.push(old_row[i] + old_row[i + 1])
            end
            rows = [1, middle, 1].flatten # da spoji nizove tj da ne bi bilo npr [1, [2], 1] nego [1, 2, 1]
        end
        rows
    end
end
