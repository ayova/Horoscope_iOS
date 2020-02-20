//
//  PresentAnimalViewController.swift
//  Horoscope_iOS
//
//  Created by ADMIN on 20/02/2020.
//  Copyright © 2020 ADMIN. All rights reserved.
//

import UIKit

class PresentAnimalViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet weak var presentAnimalNameLabel: UILabel!
    @IBOutlet weak var presentAnimalImage: UIImageView!
    @IBOutlet weak var presentAnimalDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presentAnimalNameLabel.text = AnimalTableViewController.animalTappedOn?.name.rawValue
        presentAnimalImage.image = AnimalTableViewController.animalTappedOn?.image
        presentAnimalDescription.text = AnimalTableViewController.animalTappedOn?.description
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
