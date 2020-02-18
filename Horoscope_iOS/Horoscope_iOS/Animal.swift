//
//  Animal.swift
//  Horoscope_iOS
//
//  Created by ADMIN on 17/02/2020.
//  Copyright © 2020 ADMIN. All rights reserved.
//

import Foundation

struct Animal: CustomStringConvertible {
    let name: AnimalName
    let attributes: String
    let affinity: String
    let dateFrom: Date
    let dateTo: Date
    
    var description: String {
        return "La gente nacida entre \(dateFrom) y \(dateTo), es representada por el \(name), quien es \(attributes), y es afin con \(affinity). "
    }
    
    enum AnimalName {
        case Rata
        case Buey
        case Tigre
        case Liebre
        case Dragon
        case Caballo
        case Serpiente
        case Cabra
        case Mono
        case Gallo
        case Perro
        case Cerdo
    }
    
}

func generateDate (date: String) -> Date {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy"
    let convertToDate = formatter.date(from: date)
    return convertToDate!

}

let Animals = [
    Animal(name: Animal.AnimalName.Rata, attributes: "ingenioso, inteligente", affinity: "fuego", dateFrom: generateDate(date: "19/02/1996"), dateTo: generateDate(date:"07/02/1997"))
//    Animal(name: Animal.AnimalName.Buey, attributes: "paciente, valeroso", affinity: "fuego", dateFrom: generateDate(date: ""), dateTo: <#T##Date#>)
]



