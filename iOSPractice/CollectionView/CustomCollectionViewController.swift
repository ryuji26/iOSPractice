//
//  CustomCollectionViewController.swift
//  iOSPractice
//
//  Created by 髙橋　竜治 on 2021/11/26.
//

import UIKit

class CustomCollectionViewController: UIViewController {
    
    @IBOutlet weak var practiceCollectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "CustomCollectionViewCell", bundle: nil)
        practiceCollectionView.register(nib, forCellWithReuseIdentifier: "customCell")
    }

}

extension CustomCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = practiceCollectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CustomCollectionViewCell

        cell.nameLabel.text = "サンプル"

        return cell
    }
}
