class ArrFinderMissingNumbers
  # Для тестов
  attr_reader :array_found  

  def initialize(array_arg)
    @array_arg = array_arg
    @length=@array_arg.length
    @count_missing_numbers = @array_arg[@length-1] - @length
    @array_found=Array.new
    @count_found_numbers=0
  end

  def find_missing_numbers
  end

  def get_report
  end  

end


enter_arr = [1, 2, 6, 7, 8, 10, 11, 13, 14, 15, 18, 19]
arrFinderMissingNumbers = ArrFinderMissingNumbers.new(enter_arr)
print arrFinderMissingNumbers.get_report
