//
//  26.07.2023
//
//  Корневое представление
//
//  Показывает экраны приложения в зависимости от current Корневой
//  модели
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
