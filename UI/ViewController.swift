//
//  ViewController.swift
//  UI
//
//  Created by Rebeca Souza on 2017-05-06.
//  Copyright © 2017 Rebeca Souza. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    let items: [[String]] = [
        ["A1", "A2", "A3"],
        ["B1", "B2", "B3"],
        ["C1", "C2", "C3"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        <#code#>
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

