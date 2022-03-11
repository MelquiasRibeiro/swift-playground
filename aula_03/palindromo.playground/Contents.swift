import UIKit

func isPalindrome(word:String) -> Bool {
    
    let reverseWord = String(word.reversed())
    
    for (index,element) in word.enumerated() {
        if(reverseWord[reverseWord.index(reverseWord.startIndex, offsetBy: index)] != element){
            return false
        }
    }
    
    return true
}

let result = isPalindrome(word: "radar")
print(result)


