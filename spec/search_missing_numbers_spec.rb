require_relative 'spec_helper'

describe ArrFinderMissingNumbers do

    let(:all_right) { ArrFinderMissingNumbers.new([1,2,3,4,5,6,7,8,9,10]) }
    let(:many_number_consecutive_of_missed) { ArrFinderMissingNumbers.new([1, 2, 6, 7, 8, 10, 11, 13, 14, 15, 18, 19]) }
    let(:one_number_consecutive_of_missed) { ArrFinderMissingNumbers.new([1, 2, 3, 4, 5, 7, 8, 10, 11, 12, 13, 14, 16, 17, 19]) }

    describe "#find_missing_numbers" do
      
      context "many number consecutive of missed [1, 2, 6, 7, 8, 10, 11, 13, 14, 15, 18, 19]" do
        it "include [3, 4, 5, 9, 12, 16, 17]"
      end
      context "one number consecutive of missed [1, 2, 3, 4, 5, 7, 8, 10, 11,12 13, 14,16,17, 19]" do
        it "include [6, 9, 18]" 
      end
      context "all right" do
        it "include []"
      end
      
    end

    describe "#get_report" do
      
      context "many number consecutive of missed [1, 2, 6, 7, 8, 10, 11, 13, 14, 15, 18, 19]" do
        it "include 'Найдены числа:  3  4  5  9  12  16  17' " 
      end
      context "one number consecutive of missed [1, 2, 3, 4, 5, 7, 8, 10, 11,12 13, 14,16,17, 19]" do
        it "include 'Найдены числа:  6  9  15  18'" 
      end
      context "all right" do
        it "include 'Массив не содержит пропущеных цифр'" 
      end
      
    end

end




