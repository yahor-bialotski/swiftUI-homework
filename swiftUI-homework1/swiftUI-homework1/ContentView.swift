//
//  ContentView.swift
//  swiftUI-homework1
//
//  Created by Егор Белоцкий on 27.06.22.
//

import SwiftUI

struct ContentView: View {
    let allStudents = School()
    
    var body: some View {
        vstack
        textFieldsLayout
        addStudentButton
        studentsListButton
    }
    
    @State var firstNameText = ""
    @State var secondNameText = ""
    @State var classNumber = ""
    @State var lesson = ""
    @State var mark = ""
    
    var vstack: some View {
        VStack {
        }
        .modifier(VstackModifier())
    }
    
    var textFieldsLayout: some View {
        VStack {
            TextField("First name", text: $firstNameText)
            TextField("Second name", text: $secondNameText)
            TextField("Class number", text: $classNumber)
            TextField("Lesson", text: $lesson)
            TextField("Mark", text: $mark)
        }
        .modifier(FontModifier())
        .padding()
    }
    
    var addStudentButton: some View {
        Button(action: {
            let student = Student(firstName: firstNameText, secondName: secondNameText, classNumber: classNumber, lessonAndMark: [lesson: mark])
            
            allStudents.students.append(student)
        }) {
            Text("Add student")
        }
        .padding()
        .frame(width: 190, height: 50)
        .background(Color.black)
        .cornerRadius(50)
        .foregroundColor(.white)
    }
    
    var studentsListButton: some View {
        Button(action: { allStudents.printAllStudents() }) {
            Text("List of students")
        }
        .padding()
        .frame(width: 190, height: 50)
        .background(Color.black)
        .cornerRadius(50)
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FontModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.blue)
            .font(.system(size: 20, weight: .bold, design: .default))
    }
}

struct BackgroundModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.gray)
            .cornerRadius(20)
    }
}

struct VstackModifier: ViewModifier {
    var labelText = "Students list"
    func body(content: Content) -> some View {
        content
        VStack {
            Text(labelText)
                .font(.system(size: 13, weight: .bold))
            Image(systemName: "pencil")
                .resizable()
                .frame(width: 60, height: 60)
        }
        .padding()
    }
}
