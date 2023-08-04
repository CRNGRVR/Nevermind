//
//  29.07.2023
//
//  Представление Login
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var model: LoginModel
    init(r: RootModel) {
        model = LoginModel(rootModel: r)
    }
    
    var body: some View {
        ZStack {
            Color("Purple")
                .ignoresSafeArea(.all)
                .onTapGesture {
                    hideKeyboard()
                }
            
            VStack(spacing: 0) {
                HStack {
                    Text("Забей. Давай поговорим")
                        .font(.custom(Montserrat.semibold.rawValue, size: 30))
                        .padding(.leading, 25)
                    
                    Spacer()
                }
                .padding(.top, 96)
                .padding(.bottom, 75)
                
                HStack {
                    Text("Введи адрес электронной почты")
                        .font(.custom(Montserrat.regular.rawValue, size: 14))
                        .padding(.leading, 25)
                    
                    Spacer()
                }
                .padding(.bottom, 12)
                
                TF_Login(text: $model.email, title: "example@mail.com")
                    .padding(.bottom, 20)
                
                Button_Yellow(title: "Продолжить", active: true) { model.next() }
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(r: RootModel())
    }
}
