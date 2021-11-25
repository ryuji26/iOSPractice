//
//  XibTableViewCell.swift
//  iOSPractice
//
//  Created by 髙橋　竜治 on 2021/11/25.
//

import UIKit

class XibTableViewCell: UITableViewCell {

    @IBOutlet weak var xibImageView: UIImageView!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
