//
//  DataBase.swift
//  TravelApp
//
//  Created by Jad ghoson on 30/10/2023.
//

import Foundation
import UIKit

struct DataBase{
  static let data = [
        Info(title: "Lebanon Resort",
             body: "Bierut,Dahye Street nb 30",
             price: "150$/perDay",
             review: "3.0",
             days: "4 days",
             description: "Lebanon,[b] officially the Republic of Lebanon,[c] is a country in West Asia. It is bordered by Syria to the north and east, by Israel to the south, and by the Mediterranean Sea to the west. Cyprus lies a short distance away from the country's coastline. ",
             image: UIImage(named: "Lebanon")!),
        Info(title: "Istanbul Hotel",
             body: "Istabull wall street nb 13 close the Airport",
             price: "120$/perDay",
             review: "5.0",
             days: "5 days",
             description: "Turkish history extends back thousands of years before the founding of the Turkish Republic in 1923. Turks, originally a nomadic people from Central Asia, established several empires, including the Seljuk Empire and later the Ottoman Empire, which was founded in Anatolia by Turkish ruler Osman in 1299.",
             image: UIImage(named: "Turkey")!),
        Info(title: "London Clock",
             body: "The Street of Gangdoly",
             price: "140$/perDay",
             review: "3.3",
             days: "10 days",
             description: "Historically, London grew from three distinct centres: the walled settlement founded by the Romans on the banks of the Thames in the 1st century ce, today known as the City of London, “the Square Mile,” or simply “the City”; facing it across the bridge on the lower gravels of the south bank",
             image: UIImage(named: "London")!)
]
    
    
    
}
