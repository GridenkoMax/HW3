//
//  ViewController.swift
//  HW3
//
//  Created by Maxim Gridenko on 29.09.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
 
    @IBOutlet weak var viewRGB: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var color: UIColor!
    weak var delegate: ViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewRGB.layer.cornerRadius = 10
        sendColor()
        setupView()
        setupLabels()

    }
    @IBAction func redSliderAction() {
        redValue.text = String(format: "%.2f", redSlider.value)
       setupView()
        
    }
    @IBAction func greenSliderAction() {
        greenValue.text = String(format: "%.2f", greenSlider.value)
        setupView()
    }
    @IBAction func blueSliderAction() {
        blueValue.text = String(format: "%.2f", blueSlider.value)
        setupView()
    }
    
    @IBAction func saveActionButton() {
        delegate.getColor(UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1))
        dismiss(animated: true)
    }
    
    private func sendColor(){
        let ciColor = CIColor(color:color)
        redSlider.value = Float(ciColor.red)
        blueSlider.value = Float(ciColor.blue)
        greenSlider.value = Float(ciColor.green)
    }
}

protocol ViewControllerDelegate: AnyObject{
    func getColor(_ color: UIColor)
}

extension ViewController {
    private func setupLabels(){
        redValue.text = String(format: "%.2f",redSlider.value)
        greenValue.text = String(format: "%.2f",greenSlider.value)
        blueValue.text = String(format: "%.2f",blueSlider.value)
    }
    private func setupView(){
        viewRGB.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}
