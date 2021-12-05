//
//  CustomCollectionViewCell.swift
//  iOSPractice
//
//  Created by 髙橋　竜治 on 2021/11/26.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var ThumbnailImage: UIImageView!
    @IBOutlet weak var commentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
