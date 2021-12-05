//
//  CustomCollectionViewController.swift
//  iOSPractice
//
//  Created by 髙橋　竜治 on 2021/11/26.
//

import UIKit

class CustomCollectionViewController: UIViewController {

    let models = Model.createModels()
    
    @IBOutlet weak var practiceCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "CustomCollectionViewCell", bundle: nil)
        practiceCollectionView.register(nib, forCellWithReuseIdentifier: "customCell")

        let sectionInsets = UIEdgeInsets(top: 10.0, left: 2.0, bottom: 2.0, right: 2.0)
        let itemsPerRow: CGFloat = 3

        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow

        let layout = UICollectionViewFlowLayout()
//        layout.itemSize = CGSize(width: practiceCollectionView.frame.width, height: 100)
        layout.itemSize = CGSize(width: widthPerItem, height: widthPerItem + 42)
        practiceCollectionView.collectionViewLayout = layout
    }

}

extension CustomCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count;
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = practiceCollectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CustomCollectionViewCell

        cell.setupCell(model: models[indexPath.row])

        return cell
    }
}

extension CustomCollectionViewController: UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}
