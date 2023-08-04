//
//  29.07.2023
//
//  Жёлтая кнопка
//  Растягивается под размер текста.
//
//  Если активна, имеет полный оттенок и выполняет передаваемый
//  метод. Если не активна, имеет половину оттенка и не выполняет
//  действие
//

import SwiftUI

struct Button_Yellow: View {
    var title: String
    var active: Bool
    var actionIfActive: () -> Void
    
    var body: some View {
        Button(action: { onTap() }, label: {
            ZStack {
                Color("Yellow")
                    .opacity(active ? 1 : 0.5)
                    .cornerRadius(5)
                
                Text(title)
                    .foregroundColor(.black)
                    .font(.custom(Montserrat.medium.rawValue, size: 16))
                    .padding(.horizontal, 30)
                    .padding(.vertical, 10)
            }
            .fixedSize()
        })
    }
    
    func onTap() {
        if active {
            actionIfActive()
        }
    }
}

struct YellowButton_Previews: PreviewProvider {
    static var previews: some View {
        Button_Yellow(title: "Продолжитьgdfgd", active: true, actionIfActive: {})
    }
}
