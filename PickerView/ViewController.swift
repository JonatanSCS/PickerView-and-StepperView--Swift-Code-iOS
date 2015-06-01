//
//  ViewController.swift
//  PickerView
//
//  Created by Jonatan Santa Cruz Soria on 26/05/15.
//  Copyright (c) 2015 Jonatan Santa Cruz Soria. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var array = ["a", "b", "c", "d", "e", "f", "g"]
    var labelNumber = 0
    
    @IBOutlet var label: UILabel!
    @IBOutlet var PickerView: UIPickerView!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PickerView.dataSource = self
        PickerView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var labeltwo: UILabel!
    
    @IBAction func str(sender: UIStepper) {
        
        if sender.value < 11{
        
            self.labeltwo.text = sender.value.description
        }
            
        else {
            sender.value = 10
        }

    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }

    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return array[row]
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
        
    }

    @IBAction func button(sender: AnyObject) {
        
        label.text = array[labelNumber]
        
    }
    
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        labelNumber = row
    }
    
}

