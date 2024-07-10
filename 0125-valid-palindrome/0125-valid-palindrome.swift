class Solution {
    func isPalindrome(_ s: String) -> Bool {
        
        var left = 0
        var right = s.count-1
        let arrayChars = Array(s)
        
        repeat {
            if !arrayChars[left].isLetter && !arrayChars[left].isNumber {
                left += 1
                continue
            }
            
            if !arrayChars[right].isLetter && !arrayChars[right].isNumber {
                right -= 1
                continue
            }
            
            if arrayChars[left].lowercased() == arrayChars[right].lowercased() {
                right -= 1
                left += 1
            } else {
                return false
            }
            
        } while(right > left)
        
        return true
    }
}
