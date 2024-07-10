class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var dictVar: [Int:Int] = [:]
        
        for i in 0..<nums.count {
            if let number = dictVar[target-nums[i]] {
                return [number,i]
            } else {
                dictVar.updateValue(i, forKey: nums[i])
            }
        }
        return []
    }
}