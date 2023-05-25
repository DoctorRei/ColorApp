//
//  ViewController.swift
//  ColorApp
//
//  Created by Акира on 25.05.2023.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    // MARK: IBOutlets
    @IBOutlet var mainView: UIView!
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSliderRed()
        setupSliderGreen()
        setupSliderBlue()
       
    }

    // MARK: IBActions
    @IBAction func sliderRedAction() {
        labelRed.text = fromFloatToString(sliderRed)
        setupView()
    }
    @IBAction func sliderGreenAction() {
        labelGreen.text = fromFloatToString(sliderGreen)
        setupView()
    }
    @IBAction func sliderBlueAction() {
        labelBlue.text = fromFloatToString(sliderBlue)
        setupView()
    }

    // MARK: Private Methods
    private func setupSliderRed() {
        sliderRed.value = 0
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 255
        sliderRed.tintColor = .red
    }
    
    private func setupSliderGreen() {
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 255
        sliderGreen.tintColor = .green
    }
    
    private func setupSliderBlue() {
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 255
        sliderBlue.tintColor = .blue
    }
    
     private func setupColor(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
      }
    
    private func setupView() {
        mainView.backgroundColor = setupColor(
            red: CGFloat(sliderRed.value),
            green: CGFloat(sliderGreen.value),
            blue: CGFloat(sliderBlue.value))
    }
    
    // Сделал сам, на основе вчерашнего митинга. Но не понимаю как она работает.
    // ... Но работает же. Все в гугле предлагают этот вариант, потому его и заюзал
    private func fromFloatToString(_ slider: UISlider) -> String {
       return String(format: "%.f", slider.value)
    }

    
}


