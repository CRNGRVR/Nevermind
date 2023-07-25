//
//  NevermindApp.swift
//  Nevermind
//
//  Created by Иван on 26.07.2023.
//

import SwiftUI

@main
struct NevermindApp: App {
    @ObservedObject var rootModel = RootModel()
    
    var body: some Scene {
        WindowGroup {
            RootView(rootModel: rootModel)
        }
    }
}
