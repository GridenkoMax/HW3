//
//  StartScreenViewController.swift
//  HW3
//
//  Created by Maxim Gridenko on 18.10.2023.
//

import UIKit


protocol SettingsViewControllerDelegate: AnyObject{
    func getColor(_ color: UIColor)
}

final class StartScreenViewController: UIViewController {
    
    var color = UIColor.brown
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.color = view.backgroundColor
        settingsVC.delegate = self
    }
}
extension StartScreenViewController: SettingsViewControllerDelegate {
    func getColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
