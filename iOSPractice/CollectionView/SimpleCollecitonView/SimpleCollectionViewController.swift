//
//  SimpleCollectionViewController.swift
//  iOSPractice
//
//  Created by 髙橋　竜治 on 2021/12/06.
//

import UIKit

class SimpleCollectionViewController: UIViewController {

    // サムネイル画像の名前
    let photos = ["1", "2", "3", "4", "5", "6", "7", "8"]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

extension SimpleCollectionViewController: UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}

extension SimpleCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let testCell: UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)

        let imageView = testCell.contentView.viewWithTag(1) as! UIImageView
        let cellImage = UIImage(named: photos[indexPath.row])
        imageView.image = cellImage

        let label = testCell.contentView.viewWithTag(2) as! UILabel
        label.text = photos[indexPath.row]

        return testCell
    }
}

extension SimpleCollectionViewController: UICollectionViewDelegateFlowLayout {

    // UICollectionViewDelegateFlowLayoutを使うときは、StoryBoard,XibのEstimated SizeがNoneになっていることを確認する。
    // 詳細URL:https://zenn.dev/karaage/articles/ca61f5765f8010

    // UICollectionViewの外周余白
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }

    // Cellのサイズ
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let horizontalSpace: CGFloat = 2
        let cellSize: CGFloat = self.view.bounds.width/2 - horizontalSpace
        return CGSize(width: cellSize, height: cellSize)
    }
    // 行の最小余白
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    // 列の最小余白
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
}
