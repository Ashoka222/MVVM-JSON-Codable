//
//  UserModel.swift
//  MVVM+JSON+Codable
//
//  Created by K Ashok on 30/12/21.
//

import Foundation
import UIKit

struct UserModel: Codable {
    let userId: Int?
    let id: Int?
    let title: String?
    let completed: Bool?

    enum CodingKeys: String, CodingKey {
        case userId     //we can write case as the name of key in API response, which are same or we don't want to change like key is "user_id" then we can write (case userId = "user_id") else if key is userId and we want to use as it is then use (case userId)
        case id = "id"
        case title = "title"
        case completed = "completed"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        userId = try values.decodeIfPresent(Int.self, forKey: .userId)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        completed = try values.decodeIfPresent(Bool.self, forKey: .completed)
    }
    
    func getStatusAndColor() -> (String, UIColor) {
        if completed ?? true {
            return ("COMPLETED", .systemGreen)
        } else {
            return ("NOT COMPLETED", .red)
        }
    }
}
