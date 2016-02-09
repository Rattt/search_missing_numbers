class ArrFinderMissingNumbers

  attr_reader   :array_origin, :count_missing_numbers, :length
  attr_accessor :count_found_numbers, :array_found_missing_numbers

  def initialize(array)

    @array_origin = array
    @length = array_origin.length
    @count_missing_numbers = array_origin[length-1] - length
    @array_found_missing_numbers = Array.new
    @count_found_numbers=0

  end

  def execute

    reporting = ''
    if count_missing_numbers == 0
      reporting << "Массив не содержит пропущеных цифр"
    else
      find_missing_numbers
      reporting << "Найдены числа:"
      array_found_missing_numbers.each {|number| reporting << "  #{number}"}
    end

    reporting
  end

  private

  def find_missing_numbers
    raise 'An error has occured' if count_missing_numbers <= 0

    count_missing_numbers.times do
      if count_missing_numbers == count_found_numbers
        break
      end
      find_missing_group_number(length/2, length-1)
    end

  end

  # Может найти группу чисел в 1 ветке в худшем случае от 1 до 7 в лучшем
  def find_missing_group_number(index_left_border, index_right_border)

    if array_origin[index_left_border] == index_left_border + 1 + count_found_numbers
      find_right_side( index_left_border, index_right_border)
    else
      shift_left_side( index_left_border )
    end

  end

  def find_right_side( index_left_border, index_right_border)

    if index_right_border - index_left_border > 10
      find_missing_group_number( index_left_border + (index_right_border - index_left_border)/2 ,index_right_border)
    else
      search_on_small_piece(index_left_border, index_right_border)
    end

  end

  def search_on_small_piece(index_left_border, index_right_border)

    while index_left_border <= index_right_border  do

      while index_left_border + 1 + count_found_numbers < array_origin[index_left_border]
        array_found_missing_numbers.push(index_left_border + 1 + count_found_numbers)
        @count_found_numbers +=1
        if array_origin[index_right_border] == index_right_border + 1 + count_found_numbers
          break
        end
      end

      index_left_border +=1
    end

  end

  def shift_left_side(index_left_border)
    find_missing_group_number((index_left_border)/2, index_left_border)
  end

end

enter_arr = [1, 2, 3, 4, 7, 8, 10, 11, 13, 14, 15, 17, 18]
print "#{ArrFinderMissingNumbers.new(enter_arr).execute} \n"

