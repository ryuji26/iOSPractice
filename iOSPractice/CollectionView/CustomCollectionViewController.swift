//
//  CustomCollectionViewController.swift
//  iOSPractice
//
//  Created by 髙橋　竜治 on 2021/11/26.
//

import UIKit

class CustomCollectionViewController: UIViewController {

    let photos = ["1", "2", "3", "4", "5", "6", "7", "8"]
    
    @IBOutlet weak var practiceCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "CustomCollectionViewCell", bundle: nil)
        practiceCollectionView.register(nib, forCellWithReuseIdentifier: "customCell")
    }

}

extension CustomCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = practiceCollectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CustomCollectionViewCell

        let imageView = cell.contentView.viewWithTag(1) as! UIImageView
        let cellImage = UIImage(named: photos[indexPath.row])
        imageView.image = cellImage

        let label = cell.contentView.viewWithTag(2) as! UILabel
        label.text = photos[indexPath.row]

        return cell
    }
}

extension CustomCollectionViewController: UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}

extension CustomCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let horizontalSpace: CGFloat = 2
        let cellSize: CGFloat = self.view.bounds.width/2 - horizontalSpace
        return CGSize(width: cellSize, height: cellSize)
    }
}
