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
    if @count_missing_numbers>0
      @count_missing_numbers.times do
        self.find_missing_group_number
        if @count_missing_numbers == @count_found_numbers
          break
        end
      end
    end
  end

  def find_missing_group_number(index_left_border = (@length/2)+1, index_right_border = @length-1, suspicion=0)
    if @array_arg[index_left_border]==index_left_border+1+@count_found_numbers
      if index_right_border-index_left_border>10
        self.find_missing_group_number(index_left_border+(index_right_border-index_left_border)/2,index_right_border,suspicion)
      else
        while index_left_border < index_right_border  do
          index_left_border +=1
          found_now=0
          while @array_arg[index_left_border-1]+1+found_now!=@array_arg[index_left_border]
            @array_found.push(@array_arg[index_left_border-1]+1+found_now)
            @count_found_numbers+=1
            suspicion-=1
            found_now+=1
            if suspicion == 0
              break
            end
          end
        end
      end
    else
      suspicion=@array_arg[index_left_border]-index_left_border+1
      self.find_missing_group_number((index_left_border+1)/2,index_left_border,suspicion)
    end
  end

  def get_report
    self.find_missing_numbers
    reporting = ''
    if @array_found.length == 0
      reporting << "Массив не содержит пропущеных цифр \n"
    else
      reporting << "Найдены числа:"
      @array_found.each {|number| reporting << "  #{number}"}
      reporting << "\n"
    end
    reporting
  end

end


enter_arr = [1, 2, 6, 7, 8, 10, 11, 13, 14, 15, 18, 19]
arrFinderMissingNumbers = ArrFinderMissingNumbers.new(enter_arr)
print arrFinderMissingNumbers.get_report
