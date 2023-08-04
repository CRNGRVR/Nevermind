//
//  30.07.2023
//
//  users_data
//
//  Описывает структуру записи из таблицы users_data базы данных Supabase
//

import Foundation

struct users_data: Encodable, Decodable {
    let id: UUID
    let user_UID: UUID
    let email: String
    let name: String
    
    //  URL на файл в бакете
    let image: String
    
    //  UUID всех доступных пользователю чатов
    let chats: [UUID]
}
