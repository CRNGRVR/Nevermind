//
//  04.08.2023
//
//  Представление Verify
//

import SwiftUI
import AEOTPTextField

struct VerifyView: View {
    @ObservedObject var model: VerifyModel
    init(r: RootModel) {
        model = VerifyModel(r: r)
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
                    Text("Подтверди, что ты это ты")
                        .font(.custom(Montserrat.semibold.rawValue, size: 30))
                        .padding(.leading, 25)
                    
                    Spacer()
                }
                .padding(.top, 96)
                .padding(.bottom, 74)
                
                HStack {
                    Text("Введи код из письма")
                        .font(.custom(Montserrat.regular.rawValue, size: 14))
                        .padding(.leading, 25)
                    
                    Spacer()
                }
                .padding(.bottom, 12)
                
                AEOTPView(text: $model.otp, width: UIScreen.main.bounds.width - 50, height: 50, otpCornerRaduis: 5, otpFontSize: 16, otpFont: UIFont(name: Montserrat.medium.rawValue, size: 16)!)
                    .padding(.bottom, 30)


                Button(action: {}, label: {
                    Text("Отправить код повторно")
                        .font(.custom(Montserrat.medium.rawValue, size: 16))
                        .foregroundColor(Color("Yellow"))
                })

                Spacer()
                
                Text("Ошибся с почтой? \(Text("Вернись назад").font(.custom(Montserrat.medium.rawValue, size: 14)).foregroundColor(Color("Yellow"))) и исправь")
                    .font(.custom(Montserrat.regular.rawValue, size: 14))
                    .padding(.bottom, 20)
                    .onTapGesture {
                        model.backToLogin()
                    }
            }
        }
    }
}

struct VerifyView_Previews: PreviewProvider {
    static var previews: some View {
        VerifyView(r: RootModel())
    }
}
