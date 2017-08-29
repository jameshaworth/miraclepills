//
//  ViewController.swift
//  MiraclePills
//
//  Created by James Haworth on 29/08/2017.
//  Copyright © 2017 James Haworth. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var stateBtn: UIButton!
    @IBOutlet weak var statePckr: UIPickerView!
    
    let states = ["Alaska","Arkansas","Alabama","California","Maine","New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePckr.dataSource = self
        statePckr.delegate = self
        statePckr.layer.cornerRadius = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stBtnPress(_ sender: Any) {
        statePckr.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateBtn.setTitle(states[row], for: UIControlState.normal)
        statePckr.isHidden = true
    }
        
    
}

