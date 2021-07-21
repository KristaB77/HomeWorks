import UIKit

/*
 Exercise 1
 Create enum CalculationType as String, where will be: addition, subtraction, multiplication, division with String value
 */
/*
 Exercise 1.1
 Create a func calculateResult with argument firstNumber, parametrs numberOne, data type Int, + argument andSecondNumber, parametrs numberTwo, data type Int ,+ argument withCalculationType, parametrs calculationType, data type CalculationType and everything will return Int.
 Than use switch case to calculate and return Int result
    var result = numberOne
       switch calculationType {
       case .addition: result += numberTwo
        .....
       }
  print("Result:  \(calculationType.rawValue) \(numberOne) and \(numberTwo) = \(result)")
    return result
 */
/*
Exercise 1.2
Declare two numbers.
Call func 4 times for all calculateResult
*/
enum CalculationType: String {
    case addition = "+"
    case substraction = "-"
    case multiplication = "*"
    case division = "/"
}
var numberOne = 10
var numberTwo = 5
func calculateResult (firstNumber:Int, andSecondNumber:Int, withCalculationType:CalculationType)-> Int {
   var result = firstNumber
    switch withCalculationType {
       case.addition: result += andSecondNumber
       case.substraction: result -= andSecondNumber
       case.multiplication: result *= andSecondNumber
       case.division: result /= andSecondNumber
       }
      print("Result: \(withCalculationType.rawValue) \(firstNumber) and \(andSecondNumber) = \(result)")
      return result
}
calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: CalculationType.multiplication)
calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: CalculationType.division)
calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: CalculationType.substraction)
calculateResult(firstNumber: numberOne, andSecondNumber: numberTwo, withCalculationType: CalculationType.addition)
