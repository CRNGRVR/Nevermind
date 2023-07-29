//
//  26.07.2023
//
//  NevermindApp.swift
//
//  Входная точка программы. Инициализирует и передаёт
//  корневую модель приложения, является высшей точкой
//  иерархии
//

import SwiftUI

@main
struct NevermindApp: App {
    //  Корневая модель
    @ObservedObject var rootModel = RootModel()
    
    var body: some Scene {
        WindowGroup {
            //  Корневое представление
            RootView(rootModel: rootModel)
        }
    }
}
