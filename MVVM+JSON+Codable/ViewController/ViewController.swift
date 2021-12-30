//
//  ViewController.swift
//  MVVM+JSON+Codable
//
//  Created by K Ashok on 30/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var userViewModel = UserViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "UserTableViewCell", bundle: nil), forCellReuseIdentifier: "UserTableViewCell")
        
        userViewModel.vc = self
        userViewModel.getAllUserData()        
    }


}




