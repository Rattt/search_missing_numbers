require_relative 'spec_helper'


describe ArrFinderMissingNumbers do

    let(:all_right) { ArrFinderMissingNumbers.new([1,2,3,4,5,6,7,8,9,10]).execute }
    let(:many_number_consecutive_of_missed) { ArrFinderMissingNumbers.new([1, 2, 3, 4, 7, 8, 10, 11, 13, 14, 15, 17, 18]).execute }

    describe "#execute" do
      
      context "many number consecutive of missed [1, 2, 3, 4, 7, 8, 10, 11, 13, 14, 15, 17, 18]" do
        it "Найдены числа:  5  6  9  12  16" do
          expect(many_number_consecutive_of_missed).to include("Найдены числа:  5  6  9  12  16")
        end
      end

      context "all right" do
        it "include []" do
          expect(all_right).to include("Массив не содержит пропущеных цифр")
        end
      end
      
    end


end




