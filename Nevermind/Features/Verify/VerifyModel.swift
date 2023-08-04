//
//  04.08.2023
//
//  Модель Verify
//
//  Отвечает за передачу в Supabase кода OTP и переключение экрана
//

import Foundation
import SwiftUI

class VerifyModel: ObservableObject {
    
    //  Ссылка на корневое представление для переключения экранов
    @Published var rootModel: RootModel
    
    //  Поле ввода
    @Published var otp = ""
    
    init(r: RootModel) {
        self.rootModel = r
    }
    
    
    //  Действие "Отправить код повторно"
    func codeAgain() {}
    
    //  Действие "Вернись назад"
    func backToLogin() {
        rootModel.current = .login
    }
}
