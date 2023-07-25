//
//  ContentView.swift
//  Nevermind
//
//  Created by Иван on 26.07.2023.
//

import SwiftUI

struct RootView: View {
    @ObservedObject var rootModel: RootModel
    
    var body: some View {
        switch rootModel.current {
        case .login: EmptyView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView(rootModel: RootModel())
    }
}
