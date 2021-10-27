//
//  PrefectureTableViewCell.swift
//  muranakaKadai11
//
//  Created by 村中令 on 2021/10/25.
//

import UIKit

class PrefectureTableViewCell: UITableViewCell {
    @IBOutlet private weak var prefectureNameLabel: UILabel!

    func configure(name: String) {
        prefectureNameLabel.text = name
    }
}
