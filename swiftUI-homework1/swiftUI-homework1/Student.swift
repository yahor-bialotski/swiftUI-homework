//
//  Student.swift
//  swiftUI-homework1
//
//  Created by Егор Белоцкий on 27.06.22.
//

import Foundation

class Student {
    let firstName: String
    let secondName: String
    var classNumber: String
    let lessonAndMark: [String: String]
    
    init(firstName: String,
         secondName: String,
         classNumber: String = "1413",
         lessonAndMark: [String: String]) {
        self.firstName = firstName
        self.secondName = secondName
        self.classNumber = classNumber
        self.lessonAndMark = lessonAndMark
    }
   
    func printStudentInfo() {
        let info = "First name: \(firstName), second name: \(secondName), (\(classNumber))\nlesson and mark: \(lessonAndMark)"
        print(info)
    }
}
