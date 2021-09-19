class Solution {
    func isValid(_ s: String) -> Bool {
    var stack = [Character]()
    
    for char in s {
        if "({[".contains(char) {
            stack.append(char)
        }
        else if ")}]".contains(char) {
            let last = stack.popLast()
            if char == ")" && last != "(" {
                return false
            }
            else if char == "}" && last != "{" {
                return false
            }
            else if char == "]" && last != "[" {
                return false
            }
        }
    }
    
    if !stack.isEmpty {
        return false
    }
    
    return true
}
}