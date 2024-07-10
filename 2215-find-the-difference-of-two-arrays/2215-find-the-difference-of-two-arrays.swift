class Solution {
    func findDifference(_ array1: [Int], _ array2: [Int]) -> [[Int]] {
        var sortedArray1 = Array(Set(array1)).sorted()
        var sortedArray2 = Array(Set(array2)).sorted()

        var i = 0
        var j = 0

        while i < sortedArray1.count && j < sortedArray2.count {
            if sortedArray1[i] == sortedArray2[j] {
                sortedArray1.remove(at: i)
                sortedArray2.remove(at: j)
            } else if sortedArray1[i] < sortedArray2[j] {
                i += 1
            } else {
                j += 1
            }
        }

        return [sortedArray1, sortedArray2]
    }

}