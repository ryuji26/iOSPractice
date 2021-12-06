//
//  SubViewController.swift
//  iOSPractice
//
//  Created by 髙橋　竜治 on 2021/12/05.
//

import UIKit

class SubViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!

    var selectedImg: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = selectedImg
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
    }

}
