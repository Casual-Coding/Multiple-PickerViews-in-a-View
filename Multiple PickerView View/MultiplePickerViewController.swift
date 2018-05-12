//
//  ViewController.swift
//  Multiple PickerView View
//
//  Created by Marcus on 12.05.18.
//  Copyright © 2018 CasualCoding. All rights reserved.
//

import UIKit

class MultiplePickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    //pickerview outlets
    @IBOutlet weak var pickerView1: UIPickerView!
    @IBOutlet weak var pickerView2: UIPickerView!
    
    //vars
    var pickerData1: [String] = [String]()
    var pickerData2: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //filling the Data with some numbers
        if pickerData1.isEmpty {
            for i in 10...90 {
                pickerData1.append(String(i))
            }
        }
        if pickerData2.isEmpty {
            for i in 10...150 {
                pickerData2.append(String(i))
            }
        }
        pickerView1.delegate = self
        pickerView1.dataSource = self
        pickerView2.delegate = self
        pickerView2.dataSource = self
    }
    
    //number of coloums
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView1 == pickerView {
            return pickerData1.count
        }
        if pickerView2 == pickerView {
            return pickerData2.count
        }
        return 0
    }
    //getting the Data
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView1 == pickerView {
            return pickerData1[row]
        }
        if pickerView2 == pickerView {
            return pickerData2[row]
        }
        return ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

