//
//  FinderViewController.swift
//  Horoscope_iOS
//
//  Created by ADMIN on 19/02/2020.
//  Copyright © 2020 ADMIN. All rights reserved.
//

import UIKit

class FinderViewController: UIViewController {
    @IBOutlet weak var animalDescriptionOutlet: UILabel!
    @IBOutlet weak var animalNameOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animalNameOutlet.text = ViewController.userAnimal?.name.rawValue
        animalDescriptionOutlet.text = ViewController.userAnimal?.description
    }

}
