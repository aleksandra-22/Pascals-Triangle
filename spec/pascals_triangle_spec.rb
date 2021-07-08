require_relative "../lib/pascals_triangle"

RSpec.describe PascalsTriangle do
    describe '#triangle' do

        it "returns first row if given number of rows is 0" do
            expect(PascalsTriangle.new.triangle(0)).to eq([1])
        end

        it "returns two rows if given number of rows is 1" do
            expect(PascalsTriangle.new.triangle(1)).to eq([1, 1])
        end

        it "returns three rows if given number of rows is 2" do
            expect(PascalsTriangle.new.triangle(2)).to eq([1, 2, 1])
        end

        it "returns four rows if given number of rows is 3" do
            expect(PascalsTriangle.new.triangle(3)).to eq([1, 3, 3, 1])
        end

        it "returns five rows if given number of rows is 4" do
            expect(PascalsTriangle.new.triangle(4)).to eq([1, 4, 6, 4, 1])
        end

    end
end
