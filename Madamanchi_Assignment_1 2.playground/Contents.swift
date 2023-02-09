//1.(a)
import Foundation
var name : String
var age : Int
var gpa : Double

// 1.(b)
let maxHeight : Double = 180.93

//1.(c)
print("Your max height is \(maxHeight) cm.")
print("------------------------------------")

//1.(d)
var largeInt = (8_400_428_917)
print(largeInt)
print("------------------------------------")

//1.(e)
let statement = """
                 Hello, All
                 Welcome to Mobile Computing - iOS Spring23..!
               """
print(statement)
print("------------------------------------")

//**** End of question 1 ****

//**** Question 2 ****

//2.(a)
var x = 53.5
var y = 40
//y = x (The error that shows is like we cannot assign value of Double to Int)

//2.(b)
//The error in above question can be modified by doing type casting
//i.e.,
//var x = 53.5
//var y = 40
 y = Int(x)

//**** End of question 2 ****

//**** Question 3 ****
var x1:Double = 1
var y1:Double = 2
var lowX = 3
var lowY = 0
var highX = 0
var highY = 4

let target = -(4/3) * x1 + 4
if (y1 <= target)
{
    if (Int(x1) >= highX && Int(x1) <= lowX && Int(y1) <= highY && Int(y1) >= lowY){
        print("inside")
        
    }
    else{
        print("outside")
    }
}
else{
    print("outside")
}
print("------------------------------------")

//**** End of question 3 ****

//**** Question 4 ****

//4.(a)
var x2 = 0
var output = 1
while output <= 4000000000{
    x2 += 1
    output *= 8
}
print("Min value of x is ", x2)
print("------------------------------------")

//4.(b)
let num = 17
for m in 1...num{
    for n in 1...num{
        if(m == 1 || m == n || m == num || n == num || n == num-m+1 || n == 1){
            print("❄️",terminator : "")
        }else{
        print("🎅",terminator : "")
        }
    }
print(" ")
}
print("------------------------------------")

//**** End of question 4 ****

//**** Question 5 ****

//5.(a)
var original = "This string contains a very few a's."
var replacedOne = original.replacingOccurrences(of: "a", with: "@")
print(replacedOne)
print("------------------------------------")

//5.(b)
var str1 = "go, bearcats!"
var str2 = "GO, BEARCATS!"
if(str1 == str2)
{
    print("str1 and str2 are equal")
}
else{
    print("str1 and str2 are not equal")
}
print("------------------------------------")

//5.(c)
var s1 = "philadelphia"
var s2 = "phillies"
let s1Count = Set(s1)
let s2Count = Set(s2)
var count = 0
for char in s1Count{
    if s2Count.contains(char){
        count += 1
    }
}
print(count)
print("------------------------------------")

//5.(d)
var myString1 = "🔥🔥🔥🔥Bearcats🔥🔥🔥🔥🔥🔥🔥"
var removeEmoji = myString1.replacingOccurrences(of: "🔥" , with: "")
print(removeEmoji)

