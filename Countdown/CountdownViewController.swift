//
//  CountdownViewController.swift
//  Countdown
//
//  Created by Victor  on 5/1/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import UIKit

class CountdownViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timeButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.countDownDuration = 60
    }
    
    
    @IBAction func datePickerValueChanged(_ sender: Any) {
        print(datePicker.countDownDuration)
    }
    
}


