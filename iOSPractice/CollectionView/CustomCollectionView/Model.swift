//
//  Model.swift
//  iOSPractice
//
//  Created by 髙橋　竜治 on 2021/12/05.
//

import Foundation
import UIKit

struct Model {
    let title: String
    let image: UIImage?

    static func createModels() -> [Model] {
        return [
            Model(title: "1", image: UIImage(named: "1")),
            Model(title: "2", image: UIImage(named: "2")),
            Model(title: "3", image: UIImage(named: "3")),
            Model(title: "4", image: UIImage(named: "4")),
            Model(title: "5", image: UIImage(named: "5")),
            Model(title: "6", image: UIImage(named: "6")),
            Model(title: "7", image: UIImage(named: "7")),
            Model(title: "8", image: UIImage(named: "8"))        ]
    }
}
