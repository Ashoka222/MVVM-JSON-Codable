//
//  UserViewModel.swift
//  MVVM+JSON+Codable
//
//  Created by K Ashok on 30/12/21.
//

import UIKit

class UserViewModel {
    
    weak var vc: ViewController?
    var userData = [UserModel]()
    
    func getAllUserData() {
        URLSession.shared.dataTask(with: URL(string: "https://jsonplaceholder.typicode.com/todos")!) { [self] data, response, error in
            if error == nil {
                if let data = data {
                    do {
                        let userResponse = try JSONDecoder().decode([UserModel].self, from: data)
                        userData.append(contentsOf: userResponse)
                        print(userData)
                        DispatchQueue.main.async {
                            vc?.tableView.reloadData()
                        }                        
                    } catch let err {
                        print(err.localizedDescription)
                    }
                }
            } else {
                print(error?.localizedDescription)
            }
        }.resume()
    }
}
