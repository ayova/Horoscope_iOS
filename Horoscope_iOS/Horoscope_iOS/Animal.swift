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
    Animal(name: Animal.AnimalName.Serpiente, attributes: "misterioso, intuitivo", affinity: "tierra", dateFrom: generateDate(date: "06-02-1989"), dateTo: generateDate(date: "26-01-1990")),
    Animal(name: Animal.AnimalName.Caballo, attributes: "leal, trabajador", affinity: "metal", dateFrom: generateDate(date: "27-01-1990"), dateTo: generateDate(date: "14-02-1991")),
    Animal(name: Animal.AnimalName.Cabra, attributes: "pacifico, adaptable", affinity: "metal", dateFrom: generateDate(date: "15-02-1991"), dateTo: generateDate(date: "03-02-1992")),
    Animal(name: Animal.AnimalName.Mono, attributes: "independiente, vivaz", affinity: "agua", dateFrom: generateDate(date: "04-02-1992"), dateTo: generateDate(date: "22-01-1993")),
    Animal(name: Animal.AnimalName.Gallo, attributes: "vistoso, protector", affinity: "agua", dateFrom: generateDate(date: "23-01-1993"), dateTo: generateDate(date: "09-02-1994")),
    Animal(name: Animal.AnimalName.Perro, attributes: "leal, responsable", affinity: "madera", dateFrom: generateDate(date: "10-02-1994"), dateTo: generateDate(date: "30-01-1995")),
    Animal(name: Animal.AnimalName.Cerdo, attributes: "alegre, tolerante", affinity: "madera", dateFrom: generateDate(date: "31-01-1995"), dateTo: generateDate(date: "18-02-1996")),
    Animal(name: Animal.AnimalName.Rata, attributes: "ingenioso, inteligente", affinity: "fuego", dateFrom: generateDate(date: "19/02/1996"), dateTo: generateDate(date:"07/02/1997")),
    Animal(name: Animal.AnimalName.Buey, attributes: "paciente, valeroso", affinity: "fuego", dateFrom: generateDate(date: "08-02-1997"), dateTo: generateDate(date: "27-01-1998")),
    Animal(name: Animal.AnimalName.Tigre, attributes: "atrevido, rapido", affinity: "tierra", dateFrom: generateDate(date: "28-01-1998"), dateTo: generateDate(date: "15-02-1999")),
    Animal(name: Animal.AnimalName.Liebre, attributes: "generoso, intuitivo", affinity: "tierra", dateFrom: generateDate(date: "16-02-1999"), dateTo: generateDate(date: "04-02-2000")),
    Animal(name: Animal.AnimalName.Dragon, attributes: "entusiasta, ganador", affinity: "metal", dateFrom: generateDate(date: "05-02-2000"), dateTo: generateDate(date: "23-01-2001")),
]



