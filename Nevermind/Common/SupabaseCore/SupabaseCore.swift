//
//  30.07.2023
//
//  Ядро Supabase
//
//  Содержит в себе всё взаимодействие приложения с сервисом Supabase
//  Компонент доступен из любого модуля
//

import Foundation
import Supabase

struct SupabaseCore {
    static let shared = SupabaseCore()
    
    let client = SupabaseClient(supabaseURL: URL(string: "https://bzxatvzdizxjvyqywuju.supabase.co")!, supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ6eGF0dnpkaXp4anZ5cXl3dWp1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTA2NTAxMDksImV4cCI6MjAwNjIyNjEwOX0.gqLCiuIurif6aR1XFjiCDQpndCgiXO-KwgvUU2zwJSA")
    
    
    //  Поиск пользователя в таблице users_data, исходя из наличия
    //  происходит регистрация(если нет), или авторизация(если есть)
    func findUserByEmail(email: String) async -> Bool? {
        let querry = client.database.from("users_data").select().eq(column: "email", value: email).single()
        
        do {
            let user: User? = try await querry.execute().value
            return user != nil
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
    
}
