//
//  SwiftQuickSortArray.swift
//  SwiftQuickSortArray
//
//  Created by Angelos Staboulis on 26/3/22.
//

import Foundation
class SwiftQuickSortArray{
   static let shared = SwiftQuickSortArray()
    private init(){}
    var array:NSArray!
    var genArray:[Any]!
    var sorted:[Any]!
    func initializeArray(){
        genArray = [Any]()
        sorted = [Any]()
    }
    func fillArray(){
        if genArray.count > 1 {
            genArray.removeAll()
        }
        for _ in 0..<10{
            genArray.append(Int.random(in: 0..<10000))
            array = NSArray(array: genArray)
        }
    }
    func quickSort(sortArray:NSArray)->[Any]{
        if(sortArray.count < 1){
            return [Any]()
        }
        let middle = sortArray[sortArray.count / 2] as! Int
        let smallArray = NSPredicate(format:"intValue<%d",middle)
        let equalArray = NSPredicate(format:"intValue=%d",middle)
        let largeArray = NSPredicate(format:"intValue>%d" ,middle)
        let small =  sortArray.filtered(using: smallArray)
        let equal =  sortArray.filtered(using: equalArray)
        let large = sortArray.filtered(using: largeArray)
        return quickSort(sortArray:NSArray(array: small)) + NSArray(array:equal)  + quickSort(sortArray:NSArray(array:large))
    }
    func quicksort(){
        genArray.removeAll()
        genArray = quickSort(sortArray: array)
        array = NSArray(array: genArray)
    }
    func clearList(){
        genArray.removeAll()
        array = NSArray(array: genArray)
    }
}
