//
//  AnimalTableViewCell.swift
//  Horoscope_iOS
//
//  Created by ADMIN on 19/02/2020.
//  Copyright © 2020 ADMIN. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {

    //MARK: IBOutlets
    @IBOutlet weak var animalNameLabel: UILabel!
    @IBOutlet weak var animalImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func updateCell(with animal: Animal) {
        animalNameLabel.text = animal.name.rawValue
        animalImage.image = animal.image
    }
    
    
}
