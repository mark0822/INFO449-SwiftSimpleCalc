//: # Welcome to the UW Calculator Playground (Simple Version)
//:
print("Welcome to the UW Calculator Playground")


import Foundation
func calculate(_ args: [String]) -> Int {
    var oper:String? = nil
    var total:Int = 0
    var count = 0
    for item in args{
        if Int(item) != nil{
            guard var currentNum = Int(item) else { return -1 }
            if oper == nil{
                total += currentNum
            }else{
                switch oper{
                case "+":
                    total += currentNum
                case "-":
                    total -= currentNum
                case "*":
                    total *= currentNum
                case "/":
                    total /= currentNum
                case "%":
                    total %= currentNum
                default:
                    return -1
                }
            }
        }else{
            switch item {
              case "count":
                return count
              case "avg":
                if count == 0{
                    return 0
                }
                return total/count;
              case "fact":
                if count == 0 {
                    return 0
                }
                if total == 0 || total == 1 {
                    return 1
                }
                var ans = 1
                for num in 1...total{
                        ans *= num
                }
                return ans
              default:
                oper = item
            }
        }
        count+=1
    }
    return total
}

func calculate(_ arg: String) -> Int {
    let argsArr = arg.components(separatedBy: " ")
    return calculate(argsArr)
}
//: Below this are the test expressions/calls to verify if your code is correct.
//:
//: ***DO NOT MODIFY ANYTHING BELOW THIS***
//: -------------------------------------------
//: All of these expressions should return true
//: if you have implemented `calculate()` correctly
//
calculate(["2", "+", "2"]) == 4
calculate(["4", "+", "4"]) == 8
calculate(["2", "-", "2"]) == 0
calculate(["2", "*", "2"]) == 4
calculate(["2", "/", "2"]) == 1
calculate(["2", "%", "2"]) == 0

calculate(["1", "2", "3", "count"]) == 3
calculate(["1", "2", "3", "4", "5", "count"]) == 5
calculate(["count"]) == 0

calculate(["1", "2", "3", "4", "5", "avg"]) == 3
    // 15 / 5 = 3
calculate(["2", "2", "4", "4", "avg"]) == 3
    // 12 / 4 = 3
calculate(["2", "avg"]) == 2
    // 2 / 1 = 2
calculate(["avg"]) == 0
    // 0 / 0 = 0 (not really, but it's an edge case

calculate(["0", "fact"]) == 1
calculate(["1", "fact"]) == 1
calculate(["2", "fact"]) == 2 // 2*1
calculate(["5", "fact"]) == 120 // 5*4*3*2*1
calculate(["fact"]) == 0

calculate("2 + 2") == 4
calculate("2 * 2") == 4
calculate("2 - 2") == 0
calculate("2 / 2") == 1

calculate("1 2 3 4 5 count") == 5
calculate("1 2 3 4 5 avg") == 3
calculate("5 fact") == 120

//: -------------------------------------------
//: These are extra credit tests; they are commented out 
//: so that they do not conflict with you work until you 
//: choose to implement them.
//: Uncomment them to turn them on for evaluation.
//:
//: Implement `calculate([String])` and `calculate(String)` to handle negative numbers. You need only make the tests below pass. (You do not need to worry about "fact"/factorial with negative numbers, for example.)
//:
//: This is worth 1 pt

calculate(["2", "+", "-2"]) == 0
calculate(["2", "-", "-2"]) == 4
calculate(["2", "*", "-2"]) == -4
calculate(["2", "/", "-2"]) == -1
calculate(["-5", "%", "2"]) == -1

calculate(["1", "-2", "3", "-2", "5", "avg"]) == 1

calculate("2 + -2") == 0
calculate("2 * -2") == -4
calculate("2 - -2") == 4
calculate("-2 / 2") == -1

calculate("1 -2 3 -4 5 count") == 5

 

 func calculate(_ args: [String]) -> Double {
     var oper:String? = nil
     var total:Double = 0.0
     var count = 0.0
     for item in args{
         if Double(item) != nil{
             guard var currentNum = Double(item) else { return -1 }
             if oper == nil{
                 total += currentNum
             }else{
                 switch oper{
                 case "+":
                     total += currentNum
                 case "-":
                     total -= currentNum
                 case "*":
                     total *= currentNum
                 case "/":
                     total /= currentNum
                 case "%":
                     total.formTruncatingRemainder(dividingBy: currentNum)
                 default:
                     return -1
                 }
             }
         }else{
             switch item {
               case "count":
                 return count
               case "avg":
                 if count == 0{
                     return 0.0
                 }
                 return total/count;
               case "fact":
                 if count == 0.0 {
                     return 0.0
                 }
                 if total == 0.0 || total == 1.0 {
                     return 1.0
                 }
                 var ans = 1.0
                 for num in 1...Int(total){
                         ans *= Double(num)
                 }
                 return ans
               default:
                 oper = item
             }
         }
         count+=1
     }
     return total
 }

 func calculate(_ arg: String) -> Double {
     let argsArr = arg.components(separatedBy: " ")
     return calculate(argsArr)
 }

calculate(["2.0", "+", "2.0"]) == 4.0
calculate([".5", "+", "1.5"]) == 2.0
calculate(["12.0", "-", "12.0"]) == 0.0
calculate(["2.5", "*", "2.5"]) == 6.25
calculate(["2.0", "/", "2.0"]) == 1.0
calculate(["2.0", "%", "2.0"]) == 0.0
calculate("1.0 2.0 3.0 4.0 5.0 count") == 5.0

