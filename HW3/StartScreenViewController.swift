//
//  StartScreenViewController.swift
//  HW3
//
//  Created by Maxim Gridenko on 18.10.2023.
//

import UIKit

final class StartScreenViewController: UIViewController {
    
    var color = UIColor.brown
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? ViewController else { return }
        settingsVC.color = color
        guard let mainVC = segue.destination as? ViewController else { return }
        mainVC.delegate = self
    }
}
extension StartScreenViewController: ViewControllerDelegate {
    func getColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
