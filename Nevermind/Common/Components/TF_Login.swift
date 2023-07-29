//
//  29.07.2023
//
//  Текстовое поле для Login
//
//  Растягивается на всю ширину с отступами по 25
//  Высота фиксирована(50)
//

import SwiftUI

struct TF_Login: View {
    @Binding var text: String
    var title: String
    
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(5)
            
            TextField(title, text: $text)
                .font(.custom(Montserrat.regular.rawValue, size: 14))
                .padding(.leading, 16)
        }
        .frame(height: 50)
        .padding(.horizontal, 25)
    }
}

struct LoginTF_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.purple)
            
            TF_Login(text: .constant("gernjkgrgenjkgrgegeg"), title: "example@mail.com")
        }
    }
}
