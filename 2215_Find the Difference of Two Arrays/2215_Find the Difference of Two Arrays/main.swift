//
//  main.swift
//  2215_Find the Difference of Two Arrays
//
//  Created by Gabriel Luz Romano on 04/05/23.
//

//2215. Find the Difference of Two Arrays
//Easy
//Given two 0-indexed integer arrays nums1 and nums2, return a list answer of size 2 where:
//
//answer[0] is a list of all distinct integers in nums1 which are not present in nums2.
//answer[1] is a list of all distinct integers in nums2 which are not present in nums1.
//Note that the integers in the lists may be returned in any order.

import Foundation

print(findDifference([1,2,3,3],[1,1,2,2]))

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
