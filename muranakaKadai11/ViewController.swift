//
//  ViewController.swift
//  muranakaKadai11
//
//  Created by 村中令 on 2021/10/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var selectedPrefectureLabel: UILabel!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        switch identifier {
        case "PrefectureSelectSegue":
            let nav = segue.destination as! UINavigationController // swiftlint:disable:this force_cast
            let prefecturesVC = nav.topViewController
            as! PrefecturesTableViewController // swiftlint:disable:this force_cast
            prefecturesVC.delegate = self

        default:
            break
        }
    }
}

extension ViewController: PrefecturesTableViewControllerDelegate {
    func prefectureDidSelect(prefectureName: String) {
        selectedPrefectureLabel.text = prefectureName
    }
}
