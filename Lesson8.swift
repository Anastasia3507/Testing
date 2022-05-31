//: # Home Work 8
 
/*:
 ## Задание 1
 1.1 Создайте базовый класс `Shape` со следующими вычисляемыми свойствами:
 
 - `square: Double`
 
 - `perimeter: Double`
 
 - `description: String`
 
 Свойство `description` должно возвращать сообщение следующего вида: «Square of shape <...> is <...>. Perimeter - <...>»
 */

class Shape {

  var square: Double {
  0.0
  }

  var perimeter: Double {
  0.0
  }

  var description: String {
    "Square of shape \(type(of: self)) is \(square). Perimeter - \(perimeter)"
  }

}

/*:
 1.2. Создайте классы `Circle` и `Rectangle`, унаследовав их от `Shape`. Переопределите свойства `square` и `perimeter` для каждого класса в соответствии с правилом расчета площади и периметра (длины) конкретной фигуры.
 */

class Circle: Shape {

  var radius: Double

  init(radius: Double) {
    self.radius = radius
  }

  override var square: Double {
    Double.pi * pow(radius, 2)
  }

  override var perimeter: Double {
    2 * Double.pi * radius
  }
  
}

class Rectangle: Shape {

  var length: Double
  var width: Double

  init(length: Double, width: Double) {
    self.length = length
    self.width = width
  }

  override var square: Double {
    length * width
  }
  override var perimeter: Double {
    (length + width) * 2
  }
}


/*:
 1.3. Создайте класс `Ellipse`, унаследовав его от `Rectangle`. Переопределите свойства `square` и `perimeter` в соответствии с правилом расчета площади и периметра эллипса (для расчета нужно использовать ширину и высоту).
 */

class Ellipse: Rectangle {
  
  override var square: Double {
    Double.pi * length * width
  }

  override var perimeter: Double {
    Double.pi * (length + width)
  }
}


//: 1.4 Создайте по экземпляру каждого класса, кроме `Shape` и выведите значение свойства `description` на консоль.

let circle = Circle(radius: 12)
let rectangle = Rectangle(length: 3, width: 6)
let ellipse = Ellipse(length: 5, width: 11)

print(circle.description)
print(rectangle.description)
print(ellipse.description)

/*:
 ## Задание 2
 2.1 Создайте структуру `Car` со следующими свойствами:
 - `model: String`
 - `power: Int`
 - `description: String`
 
 Свойство `description` должно возвращать сообщение с названием автомобиля и его мощность в лошадиных силах.
 
 Так же необходимо реализовать метод `increasePower`, который должен увеличить мощность автомобиля на заданное количество лошадиных сил.
  */



/*:
 2.2 Создайте экземпляр структуры и инициализируйте её свойства. Выведите значение свойства `description` на консоль, а затем вызовите метод `increasePower`. Снова выведите значение свойства `description` на консоль.
*/

