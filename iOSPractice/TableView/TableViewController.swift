//
//  TableViewController.swift
//  iOSPractice
//
//  Created by 髙橋　竜治 on 2021/11/22.
//

import UIKit

class TableViewController: UIViewController {

    // storyboardのtableviewと接続
    @IBOutlet weak var TableView: UITableView!

    // cellに表示するデータ
    private let items: [String] = ["A", "B", "C","D", "1", "2", "3", "4"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension TableViewController: UITableViewDataSource {
    // tableview内のrowの数を決める
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // returnの後にはInt型が入る
        // 今回の場合は上のclassで作った定数itemsの数
        return items.count
    }

        // 上のnumberOfRowsInSectionで指定した数分実行される
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ??
        UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
}

// タップ時にアラートを表示させる
extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        TableView.deselectRow(at: indexPath, animated: true)
        let item = items[indexPath.row]
        let alert = UIAlertController(title: "タイトル", message: item, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
