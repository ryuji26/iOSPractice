//
//  XibTableCellController.swift
//  iOSPractice
//
//  Created by 髙橋　竜治 on 2021/11/25.
//

import UIKit

class XibTableCellController: UIViewController {

    @IBOutlet weak var xibTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "XibTableViewCell", bundle: nil)
        xibTableView.register(nib, forCellReuseIdentifier: "customCell")
    }
}

extension XibTableCellController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = xibTableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! XibTableViewCell

        cell.firstLabel.text = "サンプル"

        return cell
    }
}
