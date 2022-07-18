//
//  School.swift
//  swiftUI-homework1
//
//  Created by Егор Белоцкий on 27.06.22.
//

import Foundation

class School {
    var students = [Student]()
    
    init() { }
    
    func printAllStudents() {
        let allStudentsInfo = students
        
        for student in students {
            print(student.firstName,
                  student.secondName,
                  student.lessonAndMark,
                  student.classNumber)
        }
    }
}
