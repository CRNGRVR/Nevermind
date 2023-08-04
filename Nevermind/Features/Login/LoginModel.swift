//
//  29.07.2023
//
//  Модель Login
//
//  Отвечает за ввод почты, передачу её в компонент Supabase
//  и переключение экрана
//

import Foundation

class LoginModel: ObservableObject {
    
    //  Ссылка на корневое представление для переключения экранов
    @Published var rootModel: RootModel
    
    //  Поле ввода
    @Published var email: String = ""
    
    init(rootModel: RootModel) {
        self.rootModel = rootModel
    }
    
    //  Действие кнопки "Продолжить"
    func next() {
        rootModel.current = .verify
    }
}
