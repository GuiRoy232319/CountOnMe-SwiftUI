import Foundation


final class CalculatorModel: ObservableObject{
   @Published var stack: [String] = []
   @Published var number: String = ""
      
    func calculate(expression: [String]) -> String? {
        guard isExpressionValid(expression) else {
            return nil
        }
        if expression.count > 3{
            if checkStackCount(stack: expression) == false{
                let total1 = performOperation(Int(expression[expression.count - 3])!, Int(expression[expression.count - 1])!, expression[expression.count - 2])
                let total = performOperation(Int(expression[0])!, Int(total1)!, expression[1])
                return total
            }
        } else{
            let total = performOperation(Int(expression[expression.count - 3])!, Int(expression[expression.count - 1])!, expression[expression.count - 2])
            return total
        }
    return nil
    }
    
    /// Private Func to check the expression is valid
    private func isExpressionValid(_ elements: [String]) -> Bool {
        var hasNumber = false
        for element in elements {
            if let _ = Float(element) {
                hasNumber = true
            }
        }
        return hasNumber && elements.count % 2 == 1
    }
    /// Do the operation by switching by case
    private func performOperation(_ leftOperand: Int, _ rightOperand: Int, _ operatorSymbol: String) -> String{
        switch operatorSymbol {
        case "+": return String(leftOperand + rightOperand)
        case "-": return String(leftOperand - rightOperand)
        case "*": return String(leftOperand * rightOperand)
        case "/":
            // Verify that divider no equal to 0
            if rightOperand != 0 {
                return String(leftOperand / rightOperand)
            } else {
                return "0"
            }
        default:
            return "Error"
        }
    }
    
    /// Verification For Addition and Substraction
     func checkStackCount(stack: [String])->Bool{
            if stack[3] == "+" || stack[3] == "-"{
                let array = ["\(stack[0])","\(stack[1])","\(stack[2])"]
                let total = calculate(expression: array)
                let symbol = stack[3]
                let float = stack[4]
                self.stack.removeAll()
                self.stack = [total!, symbol, float]
                return true
            }
        return false
    }
}
