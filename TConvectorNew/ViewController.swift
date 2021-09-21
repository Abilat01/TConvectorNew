//
//  ViewController.swift
//  TConvectorNew
//
//  Created by Danya on 20.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var farentheitLabel: UILabel!
    @IBOutlet weak var slaider: UISlider! {
        didSet {
            slaider.maximumValue = 100
            slaider.minimumValue = 0
            slaider.value = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sladerAction(_ sender: UISlider) {
        
        let tempiratureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(tempiratureCelsius)ºC"
        let farinheitTempirature = Int(round(sender.value * 9 / 5)) + 32
        farentheitLabel.text = "\(farinheitTempirature)ºF"
        
    }
    
}

