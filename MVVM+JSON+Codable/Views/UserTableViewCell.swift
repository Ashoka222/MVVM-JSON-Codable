//
//  UserTableViewCell.swift
//  MVVM+JSON+Codable
//
//  Created by K Ashok on 30/12/21.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var idLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var statusLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(userModel: UserModel) {
        idLbl.text = userModel.id?.description
        titleLbl.text = userModel.title
        let status = userModel.getStatusAndColor()
        statusLbl.text = status.0
        statusLbl.textColor = status.1
    }
}
