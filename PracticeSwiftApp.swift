//
//  PracticeSwiftApp.swift
//  PracticeSwift
//
//  Created by Revanth Narne on 06/12/25.
//

import SwiftUI
internal import Combine

@main
struct PracticeSwiftApp: App {
    var body: some Scene {
        WindowGroup {
            ToDoApp()
        }
    }
}


//Environment object
class EnvironmentStorage: ObservableObject{
    @Published var theme: String = "Light"
}
