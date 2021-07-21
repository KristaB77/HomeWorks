import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
var c:Float = 3.14
var b:Float = 42.0
var cb:Double = Double(c + b)
print("\(cb).")
/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */
 var numberOne = 4
 var numberTwo = 2
 let numberThree = numberOne / numberTwo
 let numberFour = 2
 print("When dividing \(numberOne) by \(numberTwo), the result is \(numberThree), the remainder is \(numberFour).")
/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
var qty = 10
var price = 1000
if qty >= 10 {
    price = 850
}else if  qty >= 5 {
    price = 900
}
var totalSum = qty * price
print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
var userInputAge:String = "33a"
var convertToInt = Int(userInputAge)
if convertToInt == nil {
    print("This age can not be converted to Int")
    print(convertToInt as Any)
} else {
    print("This age can  be converted to Int")
    print(convertToInt)
}
/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */
let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy"
var dateComponet = DateComponents()
let calendar = Calendar.current
let currentDate = Date()
let birthDate = formatter.date(from: "05.12.1988")
let futureDate = calendar.date(byAdding: dateComponet, to: currentDate)
let totalDaysFromBirth = calendar.dateComponents([.day], from: birthDate!, to: futureDate!).day
let totalMonthFromBirth = calendar.dateComponents([.month], from: birthDate!, to: futureDate!).month
let totalYearsFromBirth = calendar.dateComponents([.year], from: birthDate!, to: futureDate!).year
print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
 var monthOfBirth = calendar.dateComponents([.month], from: birthDate!).month
 switch monthOfBirth {
case 1...3:
   print("I was born in the first quarter")
case 4...6:
    print("I was born in the second quarter")
case 7...9:
    print("I was born in the third quarter")
case 10...12:
    print("I was born in the fourth quarter")
default:
     print("I was born in the  quarter")
}
