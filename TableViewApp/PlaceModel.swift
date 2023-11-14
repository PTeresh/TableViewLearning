//
//  PlaceModel.swift
//  TableViewApp
//
//  Created by Павел Терешонок on 15.11.2023.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let restaurant = ["Папа Джонс", "Грильница", "Шаурмания", "Бургер кит", "Чикенденер", "Сахар", "Курица лаваш"]

    static func getPlaces () -> [Place] {
        
        var places = [Place]()
        
        for place in restaurant {
            places.append(Place(name: place, location: "Красноярск", type: "Кафе", image: place))
        }
        
        return places
    }
}
