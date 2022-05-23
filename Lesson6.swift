//: # Home Work 6
/*:
 ## Задание 1
1.1 Повторите задания 3.1 - 3.4 прошлого урока.
 */

func isEvenNumber(_ integer: Int) -> Bool {
  return integer % 2 == 0
}

func isEvenNumberByThree(_ integer: Int) -> Bool {
  return integer % 3 == 0
}

func growingArray(_ x: Int, and y: Int) -> [Int] {
  var numbers: [Int] = []
  for number in x...y {
    numbers.append(number)
  }
  return numbers
}

func unsortedGrowingArray(_ x: Int, and y: Int) -> [Int] {
  var numbers: Set<Int> = []
  for number in x...y {
    numbers.insert(number)
  }
  return Array(numbers)
}

var result = growingArray(1, and: 100)


/*:
 1.2 Создайте универсальную функцию для фильтрации переданного в неё массива.
 */

func filtersTheArray(integers: [Int], function: (Int) -> Bool) -> [Int] {
  var numbers: [Int] = []
  for integer in integers {
    if !function(integer){
    numbers.append(integer)
    }
  }
  return numbers
}

/*:
 1.3 Отфильтруйте массив при помощи созданной функции, избавившись от всех четных чисел и чисел кратных трем. Для фильтрации используйте функции, определяющие кратность чисел.
 */

result = filtersTheArray(integers: result, function: isEvenNumber)
result = filtersTheArray(integers: result, function: isEvenNumberByThree)

/*:
 1.4 Снова наполните массив числами от 1 до 100 и отфильтруйте его, используя блок замыкания универсальной функции.
 */

result = growingArray(1, and: 100)

result = filtersTheArray(integers: result) { number in
  number % 2 == 0
}

result = filtersTheArray(integers: result) { number in
  number % 3 == 0
}


/*:
 1.5 Снова наполните массив числами от 1 до 100 и отфильтруйте его, используя для этого функцию высшего порядка `filter`
 */

result = growingArray(1, and: 100) 

result = result.filter({$0 % 2 == 0})
result = result.filter({$0 % 3 == 0})

print(result)
