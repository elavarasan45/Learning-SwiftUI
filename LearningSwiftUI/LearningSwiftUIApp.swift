//
//  LearningSwiftUIApp.swift
//  LearningSwiftUI
//
//  Created by Elavarasan on 07/09/21.
//

import SwiftUI

@main
struct LearningSwiftUIApp: App {
    @StateObject var order = Order()

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
