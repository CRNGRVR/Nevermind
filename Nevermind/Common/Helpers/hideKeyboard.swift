//
//  04.08.2023
//
//  hideKeyboard
//
//  Расширение для View, метод скрывает активную клавиатуру
//  Использую в onTapGesture по свободной области экрана
//

import Foundation
import SwiftUI

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
