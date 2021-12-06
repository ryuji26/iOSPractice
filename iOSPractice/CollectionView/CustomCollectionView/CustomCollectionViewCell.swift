//
//  CustomCollectionViewCell.swift
//  iOSPractice
//
//  Created by 髙橋　竜治 on 2021/11/26.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    override func prepareForReuse() {
        super.prepareForReuse()
        self.ThumbnailImage.image = nil
        self.commentLabel.text = ""
    }

    @IBOutlet weak var ThumbnailImage: UIImageView!
    @IBOutlet weak var commentLabel: UILabel!

    func setupCell(model: Model) {
        commentLabel.text = model.title
        ThumbnailImage.image = model.image
    }

}
