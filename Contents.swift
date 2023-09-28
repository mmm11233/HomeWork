import UIKit

var greeting = "Hello, playground"

//1. შექმენით ორი Int ტიპის ცვლადი, მიანიჭეთ მათ მნიშვნელობა და დაბეჭდეთ მათი ჯამი.

let num: Int = 2
let num1: Int = 4

print(num + num1)



//2. შექმენით Int ტიპის ცვლადი, მიანიჭეთ მას მნიშვნელობა, და შეამოწმეთ არის თუ არა ეს რიცხვი 10-ზე მეტი და 20-ზე ნაკლები ან ტოლი, 20-ზე მეტი და 50-ზე ნაკლები ან ტოლი, 50-ზე მეტი და 100-ზე ნაკლები ან ტოლი, 100-ზე მეტი და შედეგი დაბეჭდეთ.

let checkedNumber: Int = 25

if checkedNumber > 10 && checkedNumber <= 20 {
    print("The check digit is within these range >10...<=20 and this digit is: \(checkedNumber)")
} else if checkedNumber > 20 && checkedNumber <= 50 {
    print("The check digit is within these range >20...<=50 and this digit is: \(checkedNumber)")
} else if  checkedNumber > 50 && checkedNumber <= 100 {
    print("The check digit is within these range >50...<=100 and this digit is: \(checkedNumber)")
} else if checkedNumber > 100 {
    print("The check digit is within these range >100 and this digit is: \(checkedNumber)")
} else {
    print("")
}



//3. for-in ციკლის გამოყენებით, დაბეჭდეთ რიცხვები 1-იდან 20-ამდე. რიცხვები ეწეროს ერთ ხაზზე, გამოყოფილი იყოს სფეისებით. შედეგი: 1 2 3 4...

for number in 1...20 {
    print(number, terminator: " ")
    
}



//4. while ციკლის გამოყენებით, 1-იდან 100-ამდე დაბეჭდეთ ყველა კენტი რიცხვის ჯამი.

var total = 0
var currentNumber = 1

while currentNumber < 100 {
    if currentNumber % 2 != 0 {
        total += currentNumber
    }
    currentNumber += 1
}

print("The sum of all odd numbers from 1 to 100 is: \(total)")



//5. შექმენით String ტიპის ცვლადი, და ციკლის გამოყენებით დაარევერსეთ ეს ცვლადი, მაგ: თუ გვაქვს TBC Academy უნდა მივიღოთ ymedacA CBT.

var firstString = "TBC Academy"
var reversedString = ""

for letter in firstString {
    reversedString = String(letter) + reversedString
    
}
print(reversedString)



//6. დაბეჭდეთ ყველა ორნიშნა რიცხვი რომელიც ერთნაირი ციფრებით არის შედგენილი.
//ყველა ორნიშნა ფორ ინ
//ერთანირი ციფებიანი იფ

for number in 10...99 {
    if String(number).count == 2 && String(number).first == String(number).last {
        print(number)
    }
}



//7. გაქვს 9 ნიშნა რიცხვი და დაბეჭდე შებრუნებული რიცხვი.

var originalNumber = 123456789
var reversedNumber = 0

while originalNumber != 0 {
    let digit = originalNumber % 10
    reversedNumber = reversedNumber * 10 + digit
    originalNumber /= 10
}

print("Reversed number: \(reversedNumber)")




//8. შექმენით bool-ეან ცვლადი, მაგალითად: isNumberFound და while loop-ის გამოყენებით იპოვეთ პირველი რიცხვი რომელიც იყოფა 5-ზეც და 9-ზეც ერთდროულად. 1-იდან დაიწყეთ ათვლა.

var isNumberFound = false
var number = 1

while !isNumberFound {
    if number % 5 == 0 && number % 9 == 0 {
        isNumberFound = true
        print("The first number divisible by both 5 and 9 is: \(number)")
    }
    number += 1
}



//9. შექმენი String ცვლადი მაგალითად month, რომელსაც მიანიჭებ თვის მნიშვნელობას, მაგალითად: "march" და switch statement-ის გამოყენებით დაბეჭდეთ წელიწადის რა დროა.

var month = "march"
var season: String = ""

switch month {
case "january", "february", "December":
    season = "winter"
case "march", "april", "may":
    season = "spring"
case "june", "july", "august":
    season = "summer"
case "september", "october", "november":
    season = "autumn"
default:
    break
}

print(season)


//10. while loop-ისა და switch statement-ის გამოყენებით შექმენით უსასრულო შუქნიშანი, რომელიც ბეჭდავს შემდეგნაირად. "🔴->🌕->🟢->🔴->🌕..."

var actualColor = "🔴"
var isRunning = true

while isRunning {
    switch actualColor {
    case "🔴":
        print("🔴")
        actualColor = "🟡"
    case "🟡":
        print("🟡")
        actualColor = "🟢"
    case "🟢":
        print("🟢")
        actualColor = "🔴"
    default:
        isRunning = false
    }
}








