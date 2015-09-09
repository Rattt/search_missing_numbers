require_relative 'spec_helper'

describe ArrFinderMissingNumbers do

    let(:all_right) { ArrFinderMissingNumbers.new([1,2,3,4,5,6,7,8,9,10]) }
    let(:many_number_consecutive_of_missed) { ArrFinderMissingNumbers.new([1, 2, 6, 7, 8, 10, 11, 13, 14, 15, 18, 19]) }
    let(:one_number_consecutive_of_missed) { ArrFinderMissingNumbers.new([1, 2, 3, 4, 5, 7, 8, 10, 11, 12, 13, 14, 16, 17, 19]) }

    describe "#find_missing_numbers" do
      
      context "many number consecutive of missed [1, 2, 6, 7, 8, 10, 11, 13, 14, 15, 18, 19]" do
        it "include [3, 4, 5, 9, 12, 16, 17]" do
          many_number_consecutive_of_missed.find_missing_numbers
          expect(many_number_consecutive_of_missed.array_found).to include(3, 4, 5, 9, 12, 16, 17)
        end
      end
      context "one number consecutive of missed [1, 2, 3, 4, 5, 7, 8, 10, 11,12 13, 14,16,17, 19]" do
        it "include [6, 9, 18]" do
          one_number_consecutive_of_missed.find_missing_numbers
          expect(one_number_consecutive_of_missed.array_found).to include(6,9,15,18)
        end
      end
      context "all right" do
        it "include []" do
          all_right.find_missing_numbers
          expect(all_right.array_found).to be_empty
        end
      end
      
    end

    describe "#get_report" do
      
      context "many number consecutive of missed [1, 2, 6, 7, 8, 10, 11, 13, 14, 15, 18, 19]" do
        it "include 'Найдены числа:  3  4  5  9  12  16  17' " do
          expect(many_number_consecutive_of_missed.get_report).to include("Найдены числа:  3  4  5  9  12  16  17")
        end
      end
      context "one number consecutive of missed [1, 2, 3, 4, 5, 7, 8, 10, 11,12 13, 14,16,17, 19]" do
        it "include 'Найдены числа:  6  9  15  18'" do
          expect(one_number_consecutive_of_missed.get_report).to include("Найдены числа:  6  9  15  18")
        end
      end
      context "all right" do
        it "include 'Массив не содержит пропущеных цифр'" do
          expect(all_right.get_report).to include("Массив не содержит пропущеных цифр")
        end
      end
      
    end

end




