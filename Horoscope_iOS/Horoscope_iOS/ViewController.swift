//
//  ViewController.swift
//  Horoscope_iOS
//
//  Created by ADMIN on 14/02/2020.
//  Copyright © 2020 ADMIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: IBOutlets
    @IBOutlet weak var datePickerOutlet: UIDatePicker!
    @IBOutlet weak var deleteLabel: UILabel!
    
    //MARK: IBActions
    @IBAction func buttonTapped(_ sender: Any) {
        let dateOut = datePickerOutlet.date
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy" // format date
        let convertedDateToString = formatter.string(from: dateOut)
        deleteLabel.text = convertedDateToString
        // check date in a range of dates
        let fallsBetween = (Animals[0].dateFrom ... Animals[0].dateTo).contains(dateOut)
        print(fallsBetween)
    }
    
    //MARK: Internal variables
    var ani = Animals[0]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(ani)
        
    }

    
    
}

