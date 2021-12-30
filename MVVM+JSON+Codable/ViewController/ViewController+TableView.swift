//
//  ViewController+TableView.swift
//  MVVM+JSON+Codable
//
//  Created by K Ashok on 30/12/21.
//

import Foundation
import UIKit

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userViewModel.userData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as? UserTableViewCell {
            cell.selectionStyle = .none
            let userModel = userViewModel.userData[indexPath.row]
            cell.setupCell(userModel: userModel)
            return cell
        }
        return UITableViewCell()
    }
    
    
}
