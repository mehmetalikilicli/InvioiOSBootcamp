import UIKit

//Mehmet Ali Kılıçlı
//Invio iOS Bootcamp
//Homework2

//1 - From Celcius To Fahrenheit
func fromCelciusToFahrenheit(degree : Double) -> Double {
    let temp : Double = (degree * 1.8) + 32
    return temp
}

var case1 = fromCelciusToFahrenheit(degree: 10)
print("\(case1)")


//2 - Calculate Length Of Rectangle
func calculateLengthofRectangle(side1 : Double, side2 :Double) -> Double{
    var length : Double = (side1 + side2) * 2
    return length
}

var case2 = calculateLengthofRectangle(side1: 23, side2: 12)
print(case2)



//3 - Factorial
func factorial(number : Int) -> Int{
    if number >= 0 {
        var temp = 1
        if number == 0 {
            return temp
        } else if number == 1{
            return temp
        } else {
            for i in 1...number {
                temp = temp * i
            }
            return temp
        }
        
    } else {
        return number
    }
}

var case3 = factorial(number: 6)
print(case3)



//4 - How many times a char in string
func howManyTimes(str1 : Character, str2 : String) -> Int {
    var count = 0
    for char in str2 {
        if char == str1 {
            count += 1
        }
    }
    return count
}

var case4 = howManyTimes(str1: "a", str2: "Cekoslavakyalilastiramadiklarimizdan")
print(case4)

var case8 = howManyTimes(str1: " ", str2: "Ceko slava kyali las tirama dikl arim izd an")
print(case4)


//5 - Sum of Ingerior Angles
func sumofInteriorAngles(numberofSide : Int) -> Int {
    if numberofSide >= 3 {
        var temp = (numberofSide - 2) * 180
        return temp
    } else {
        return 0
    }
}

var case5 = sumofInteriorAngles(numberofSide: 12)
print(case5)



//6 - Calculate Salary
func calculateSalary(numberofDays : Int) -> Int {
    
    var salary = 0
    
    if numberofDays <= 20 {
        salary = numberofDays * 8 * 10
        return salary
    } else {
        var overtimeDay = numberofDays - 20
        salary = (20 * 8 * 10) + (overtimeDay * 8 * 20)
        return salary
    }
}

var case6 = calculateSalary(numberofDays: 40)
print(case6)



//7 - Internet Fee
func internetFee(howManyGBUse : Int) -> Int {
    
    var bill = 100
    
    if howManyGBUse <= 50 {
        return bill
    } else {
        var overDraftGB = howManyGBUse - 50
        bill = 100 + (overDraftGB * 4)
        return bill
    }
    
}

var case7 = internetFee(howManyGBUse: 40)
print(case7)
