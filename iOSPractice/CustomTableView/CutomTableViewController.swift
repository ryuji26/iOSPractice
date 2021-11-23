//
//  CutomTableViewController.swift
//  iOSPractice
//
//  Created by 髙橋　竜治 on 2021/11/22.
//

import UIKit

struct User {
    let icon: UIImage?
    let name: String
    let age: Int
}

class CustomTableViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    private let users: [User] = [
        User(icon: #imageLiteral(resourceName: "icon"), name: "Angela", age: 20),
        User(icon: #imageLiteral(resourceName: "icon"), name: "Bob", age: 20),
        User(icon: #imageLiteral(resourceName: "icon"), name: "Chris", age: 20),
        User(icon: #imageLiteral(resourceName: "icon"), name: "David", age: 20),
        User(icon: #imageLiteral(resourceName: "icon"), name: "Elly", age: 20),
        User(icon: #imageLiteral(resourceName: "icon"), name: "Ray", age: 20)
    ]
}

extension CustomTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as! UserTableViewCell

        let user = users[indexPath.row]
        cell.setup(icon: user.icon ?? #imageLiteral(resourceName: "icon"), name: user.name, age: user.age)
        return cell
    }


}
