import UIKit

var greeting = "Hello, playground"

func factorial(n:Int)->Int{
            var answer = 1              // Store the sum
            var fac = n                 // Initializing input
            
            if (fac == 0){              // Value if input == 0
                return 1
            }
            else {
                    while(fac > 1){             // Loop until factorial
                        answer *= fac
                        fac -= 1                // Decrement
                    }
                    return answer               // Return final answer
            }
    }

var total = factorial(n:5)      // Retrieve & Store answer
print(total)                    // Display answer
