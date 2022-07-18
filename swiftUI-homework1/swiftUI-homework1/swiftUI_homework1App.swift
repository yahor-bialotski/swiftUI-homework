//
//  swiftUI_homework1App.swift
//  swiftUI-homework1
//
//  Created by Егор Белоцкий on 27.06.22.
//

import SwiftUI

@main
struct swiftUI_homework1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
//                .modifier(VstackModifier())
                .modifier(BackgroundModifier())
        }
    }
}
