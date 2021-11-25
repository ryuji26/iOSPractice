//
//  ViewController.swift
//  iOSPractice
//
//  Created by 髙橋　竜治 on 2021/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func tableViewButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "toTableViewPractice", sender: self)
    }

    @IBAction func cutomTableViewTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "toCustomTableView", sender: self)
    }


    @IBAction func xibTableCellTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "toXibTableCell", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

