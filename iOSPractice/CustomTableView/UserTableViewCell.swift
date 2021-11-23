//
//  UserTableViewCell.swift
//  iOSPractice
//
//  Created by 髙橋　竜治 on 2021/11/22.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!

    func setup(icon: UIImage, name: String, age: Int) {
        iconImageView.image = icon
        nameLabel.text = name
        ageLabel.text = String(age)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
