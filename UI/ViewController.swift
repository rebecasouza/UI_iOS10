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
    
    var codeLabel: UILabel = UILabel(frame: CGRect(x: 20, y: 300, width: 200, height: 40))
    var codeButton: UIButton = UIButton(frame: CGRect(x: 230, y: 300, width: 150, height: 40))
    
    @IBOutlet weak var uiLabel: UILabel!
    
    @IBOutlet weak var progBar: UIProgressView!
    
    @IBOutlet weak var myIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var segLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        codeLabel.text = "From Code!"
        view.addSubview(codeLabel)
        
        codeButton.setTitle("Code Button", for: .normal)
        codeButton.backgroundColor = UIColor.darkGray
        // Associates the codeButton to the method didClick( from code)
        codeButton.addTarget(self, action: #selector(didClick), for: .touchUpInside)
        view.addSubview(codeButton)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        uiLabel.text = items[component][row]
    }
    
    // Changes the codeLabel text
    func didClick() {
        codeLabel.text = "Changed through code"
        
    }
    
    @IBAction func showAlert(_ sender: Any) {
        let alert: UIAlertController = UIAlertController(title: "Title", message: "This is an alert!", preferredStyle: .alert)
        // actionSheet style shows the alert at the bottom of the screen
        //let alert: UIAlertController = UIAlertController(title: "Title", message: "This is an alert!", preferredStyle: .actionSheet)

        let action1: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { (_: UIAlertAction) in
            print("Cancelled!")
        }
        // Adds a delete action to the alert 
        let action2: UIAlertAction = UIAlertAction(title: "Delete", style: .destructive) { (_: UIAlertAction) in
            print("You've deleted stuff")
        }
        
        alert.addAction(action1)
        alert.addAction(action2)
        self.present(alert, animated: true) { 
            print("Present complete")
        }
    }
    
    // Handles the slider changes 
    // Associates the value of the progress bar to the slider value
    @IBAction func didMoveSlider(_ sender: UISlider) {
        // Corrects the progBar values when slider's min value is != 0
        let percent: Float = (sender.value - sender.minimumValue) / (sender.maximumValue - sender.minimumValue)
        progBar.progress = percent
    }
    
    @IBAction func switchDidChange(_ sender: UISwitch) {
        if sender.isOn {
            myIndicator.startAnimating()
            
        }
        else {
            myIndicator.stopAnimating()
        }
    }
    
    
    @IBAction func segmentDidChange(_ sender: UISegmentedControl) {
        let selectedSegment: Int = sender.selectedSegmentIndex
        segLabel.text = sender.titleForSegment(at: selectedSegment)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

