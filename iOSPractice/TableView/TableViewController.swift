//
//  TableViewController.swift
//  iOSPractice
//
//  Created by 髙橋　竜治 on 2021/11/22.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!

    private let items: [String] = ["A", "B", "C","D", "1", "2", "3", "4"]

    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.dataSource = self
    }
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ??
        UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
}
