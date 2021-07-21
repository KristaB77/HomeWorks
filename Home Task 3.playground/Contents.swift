import UIKit

/*Lesson 3
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */
 let startingBalance: Double = 500000.0
let interestRatePerAnnum = 0.3
let endingBalance = startingBalance * interestRatePerAnnum + startingBalance
let numberOfYears = 5
let profit = startingBalance * interestRatePerAnnum
let totalBalance = endingBalance * Double(numberOfYears)
var runningBalance = startingBalance
//print (endingBalance)
print("Amount of income after \(numberOfYears) years will be \(profit) Eur. My total deposit will be \(totalBalance) Eur !")
(0...5).forEach {(i) in
print(i)
runningBalance *= 1 + interestRatePerAnnum
}
print (runningBalance)
 /*Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */
 var arr = [1,2,3,4,5,6,7,8,9]
for n in arr{
if(n % 2 == 0){
print("\(n) is even")
}}
 /*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */
for counter in 1...10 {
let randomNumber = Int.random( in: 1..<10)
if randomNumber == 5 {
print("Number 5 will be after \(counter) shuffles")
break
}
}
/*
 Exercise 4
 A bug is climbing to a 10-meter electric post.
 During the day, bug can climb two meters, during the night bug slides down to 1 meter.
 Determine with the help of the cycle how many days bug will climb on the top of the post.
  Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
let electricPost = 10
var currentBugLocation = 0
let duringTheDay = 2
let duringTheNight = -1
var numberOfDays = 0
while (true) {
    currentBugLocation < electricPost
    currentBugLocation = currentBugLocation + duringTheDay
    numberOfDays += 1
    if currentBugLocation == electricPost {     break
    }
     else {
        currentBugLocation = currentBugLocation + duringTheNight}
}
print("Bug will spend \(numberOfDays) days to reach the top of the post")
