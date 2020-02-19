//
//  ViewController.swift
//  Horoscope_iOS
//
//  Created by ADMIN on 14/02/2020.
//  Copyright © 2020 ADMIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let animals = Animals
    
    //MARK: IBOutlets
    @IBOutlet weak var datePickerOutlet: UIDatePicker!
    @IBOutlet weak var deleteLabel: UILabel!
    
    //MARK: IBActions
    @IBAction func buttonTapped(_ sender: Any) {
        let pickerDate = datePickerOutlet.date
        
        
        for animal in animals {
            if (animal.dateFrom ... animal.dateTo).contains(pickerDate) {
                deleteLabel.text = animal.description
            }
        }
    }
    
    //MARK: Internal variables
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    
}

