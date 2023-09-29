//
//  ViewController.swift
//  HW3
//
//  Created by Maxim Gridenko on 29.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
 
    @IBOutlet weak var viewRGB: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupLabels()
    }
//MARK: - RGB sliders settings
    @IBAction func redSliderAction() {
        redValue.text = String(format: "%.2f", redSlider.value)
        viewRGB.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    @IBAction func greenSliderAction() {
        greenValue.text = String(format: "%.2f", greenSlider.value)
        viewRGB.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    @IBAction func blueSliderAction() {
        blueValue.text = String(format: "%.2f", blueSlider.value)
        viewRGB.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}
// MARK: - Setup Label and viewRGB
extension ViewController {
    private func setupLabels(){
        redValue.text = redSlider.value.formatted()
        greenValue.text = greenSlider.value.formatted()
        blueValue.text = blueSlider.value.formatted()
    }
    private func setupView(){
        viewRGB.layer.cornerRadius = 10
        viewRGB.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}
