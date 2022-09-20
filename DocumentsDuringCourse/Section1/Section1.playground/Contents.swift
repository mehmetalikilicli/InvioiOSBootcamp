import UIKit

var studentName = "Mehmet Ali"
var studentAge = 24
var studentHeight = 1.65
var studentLetter = "M"
var isStudentActive = true

print("Student Height: \(studentHeight)")
print(studentAge)
print(studentName)
print(isStudentActive)
print(studentLetter)


let product_id : Int = 36
let product_name : String = "Watch"
let product_count : Int = 100
let product_supplier : String = "Rolex"
let product_price : Double = 149.99

print("Product Id : \(product_id)")
print("Product Name : \(product_name)")
print("Product Count : \(product_count)")
print("Product Supplier : \(product_supplier)")
print("Product Price : \(product_price)")

// Constant -> (Sabitler) Java -> Final

var number1 = 10

print("number1 is changeable -> \(number1)")

let number2 = 20

print("number2 is not changeable -> \(number2)")

// TYPE TRANSFORMATIONS

// FROM NUMBER TO NUMBER
var number3 = 42
var number4 = 56.78

var result1 = Double(number3)
var result2 = Int(number4)

print(result1)
print(result2)

// FROM NUMBER TO TEXT

var result3 = String(number3)//"42"
var result4 = String(number4)//"56.78"

print(result3)
print(result4)

// FROM TEXT TO NUMBER
var text = "34"

//var  result5 = Int(text)
if let result5 = Int(text) {
    print(result5)
} else {
    print("Transformation Error!")
}

// Tuples
var person = ("Mehmet Ali","Kilicli")

var name = person.0
var surName = person.1

print(person.0)
print(person.1)

var coordinates = (x: 10, y: 20)

print(coordinates.0)
print(coordinates.1)

var errorMessage = (404,"Not Found")
var (code,message) = errorMessage

print(code)
print(message)

// COMPARISON OPERATORS

var x1 = 60
var x2 = 50

var y1 = 70
var y2 = 80

print(x1 == x2)//false
print(x1 != x2)//true
print(x1 > x2)//true
print(y1 > y2)//false
print(x1 <= x2)//false

print(x1 > x2 || y1 > y2)// OR -> false + false = false, otherways true
print(x1 > x2 && y1 > y2)// AND -> trur + true = true, otherways false

// USAGE IF

var age = 24
var name2 = "Mehmet Ali"

if age <= 6 {
    print("Child")
} else if age > 6 && age >= 18 {
    print("Young")
} else {
    print("Adult")
}

if name == "Mehmet Ali" {
    print("Hello Mehmet Ali :)")
} else {
    print("Unknown Person!")
}

var userName = "admin"
var password = 12345

if userName == "admin" && password == 12345 {
    print("Logging in...")
} else {
    print("User name or password is wrong!")
}

var result6 = 8

if result6 == 9 || result6 == 10 {
    print("Result 9 or 10")
} else {
    print("Result is not 9 or 10")
}

// USAGE OF SWITCH, KOTLIN -> WHEN

var numberOfDay = 2113
var dayOfWeek = numberOfDay % 7

switch dayOfWeek {
case 1: print("Monday")
case 2: print("Tuesday")
case 3: print("Wednesday")
case 4: print("Thursday")
case 5: print("Friday")
case 6: print("Saturday")
case 7: print("Sunday")
default: print("Nothing more :)")
}

//LOOPS

//For Each
//1,2,3
for i in 1...3 {
    print("Loop 1 : \(i)")
}
print("------------------")

//From 10 to 20 increasing by 5
for j in stride(from: 10, through: 20, by: 5) {
    print("Loop 2 : \(j)")
}
print("------------------")

for j in stride(from: 10, to: 20, by: 5) {
    print("Loop 2 : \(j)")
}
print("------------------")

//From 10 to 20 decreasing by 5
for k in stride(from: 10, through: 20, by: -5) {
    print("Loop 3 : \(k)")
}
print("------------------")

//WHILE
var counter = 1

while counter < 4 {
    print("Loop 4 : \(counter)")
    counter += 1
}

print("------------------")

for l in 1...15 {
    if l == 3 {
        continue
    } else if l == 12 {
        break
    }
    print("Loop 5 : \(l)")
}


