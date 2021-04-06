//
//  ViewController.swift
//  UIKitApp
//
//  Created by Максим Лесников on 06.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    @IBOutlet var mainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: Segmented Control
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        // MARK: Label
        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(30)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        // MARK: Slider
        
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .blue
        slider.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        
        mainLabel.text = String(slider.value)
        
        // MARK: TextField
        textField.backgroundColor = .white
        // MARK: Button
        
        mainButton.layer.cornerRadius = 10
        
    }


    @IBAction func segmentedControlAction(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "Выбран сегмент с индексом 0"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "Выбран сегмент с индексом 1"
            mainLabel.textColor = .yellow
        case 2:
            mainLabel.text = "Выбран сегмент с индексом 2"
            mainLabel.textColor = .green
        default: break
        }
    }
    @IBAction func sliderAction(_ sender: Any) {
        mainLabel.text = String(Int(slider.value))
    }
    @IBAction func mainButtonAction(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else { return }
        mainLabel.text = text
    }
}

