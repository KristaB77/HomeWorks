import UIKit

/*Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains  as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */
let myTeam = "Girls"
var teamResults = ["Brooklyn Nets":["99:89", "109:99"],
"Dallas maverics": ["87:10", "11:11"]]
for (enemy,results) in teamResults {
    for result in results {
        print ("\(myTeam) against \(enemy) scored \(result)")
    }
}
