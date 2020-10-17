import UIKit

//Функция, определяющая чётное ли число
func evenNumber(a: Int){
    if a % 2 == 0 {
        print(a, "Чётное число")
    } else {
        print(a, "Нечётное число")
    }
}

evenNumber(a: 8)

//Функция, определяющая делится ли число без остатка на 3
func divisibleByThree(a: Int){
    if a % 3 == 0 {
        print(a, "Число делится на 3 без остатка")
    } else {
        print (a, "Число не делится на 3 без остатка")
    }
}

divisibleByThree(a: 10)

//Функция, создающая возратсающий массив из 100 чисел
func arrayOneH(){
    let array = [Int] (1...100)
    print (array)
}

arrayOneH()

//Функция, удаляющая из этого массива все четные числа и все числа, которые не делятся на 3
func deleteFromArray(){
    var array = [Int] (1...100)
    var index = 0
    
    while array.count > 0 && index < array.count {
        if array[index] % 3 != 0 {
            array.remove(at: index)
            index -= 1
    }
        index += 1
}
    print(array)
}

deleteFromArray()

//Функция, которая добавляет в массив новое число Фибоначчи, и добавляет при помощи нее 100 элементов
func fibonacci(n: Int) -> Int {
    var a = 0
    var b = 1
    for _ in 0..<n {
         let temp = a
         a = b
         b = temp + b
     }
    return a
}

func arrayIntAt(n: Int) -> [Int] {
    var array = [Int]()
    for i in 0...n {
        array.append(fibonacci(n: i))
    }
    print(array)
    return array
}

arrayIntAt(n: 50)
   
//Функция с простыми числами
func easyArrayCount() {
    let p = 2
    var easyArray = [Int] (p...100)
    
    easyArray.removeAll {$0 % 2 == 0}
    easyArray.insert(2, at: 0)
    easyArray.removeAll {$0 % 3 == 0}
    easyArray.insert(3, at: 1)
    easyArray.removeAll {$0 % 5 == 0}
    easyArray.insert(5, at: 2)
    easyArray.removeAll {$0 % 7 == 0}
    easyArray.insert(7, at: 3)
    
  print(easyArray)
}

easyArrayCount()

//Код короче, посчитать кол-во символов так и не смог. Задание вроде выполнил, не особо понял условие, но по методу Эрастофена все неподходящие числа удалил
func y(){
let p=2
var x = [Int] (p...100)
x.removeAll {$0%2==0}
x.insert(2,at:0)
x.removeAll {$0%3==0}
x.insert(3,at:1)
x.removeAll {$0%5==0}
x.insert(5,at:2)
x.removeAll {$0%7==0}
x.insert(7,at:3)
print(x)}
y()
