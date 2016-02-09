# search_missing_numbers
[![Build Status](https://travis-ci.org/Rattt/search_missing_numbers.svg?branch=master)](https://travis-ci.org/Rattt/search_missing_numbers) 
**ArrFinderMissingNumbers** Класс предназначенный для поиска пропущенных чисел и удобного вывода результата.
Тесты были на писаны с использованием `rspec-rails` и теститируемые при каждом коммите с использованием `travis-ci`

## Оригинальное тестовое задание
**Z3**
У вас есть огромный массив целых чисел. Все числа идут последовательно от 1 до k. Но в массиве пропущены 2 числа. Например: [1, 2, 4, 5, 7, 8]. Реализуйте алгоритм для нахождения этих чисел с минимальным использованием памяти и с максимальным быстродействием. 


## Запуск
```ruby
ruby search_missing_numbers.rb
```

## Реализация
В программе реализованы 2 основных метода: `find_missing_numbers`,`get_report`.
Первый `find_missing_numbers` заполняет массив обьекта найдеными числами. 
Второй `get_report` составляет отчет о полученных результатов.


## find_missing_numbers
Оперирует 3 методами: 

* `find_missing_group_number`  может найти только группу номеров.
* `find_right_side` ищет номера с лева на право, заполняет массив находок.
* `shift_left_side` Быстрыми шагами смещает нас к месту где все хорошо.   


## Feature Requests & Bugs
на почту: genom1990@yahoo.com


