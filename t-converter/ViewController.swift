//
//  ViewController.swift
//  t-converter
//
//  Created by Татьяна Татьяна on 20.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cenliusLable: UILabel!
    
    @IBOutlet weak var farigetLable: UILabel!
    
    @IBOutlet weak var slaider: UISlider! {
        didSet  {
            slaider.maximumValue = 100
            slaider.minimumValue = -100
            slaider.value = 0
        }
    }
    
    
    @IBAction func slaiderChang(_ sender: UISlider) {
        let temperatureCelsius = Int(round(slaider.value))
        cenliusLable.text = "\(temperatureCelsius)ºC"
        let temperatureFariget = 32 + Int(round(slaider.value * 1.8))
        farigetLable.text = "\(temperatureFariget)ºF"
    }
    
    
    
}

