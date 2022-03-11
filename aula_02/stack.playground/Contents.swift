import UIKit

class Stack {
    var myStack: [String]
    init(){
        self.myStack = []
    }
    func pop(){
        self.myStack.removeLast()
    }
    func push(element:String){
        self.myStack.append(element)
    }
    func show(){
        print(self.myStack)
    }
    
}

var newStack = Stack()

newStack.show()
newStack.push(element: "1")
newStack.show()

