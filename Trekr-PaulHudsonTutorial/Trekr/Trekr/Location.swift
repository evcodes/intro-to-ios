//
//  Location.swift
//  Trekr
//
//  Created by Varela, Eddy on 5/30/21.
//

import Foundation

// this represents a model of the data
struct Location:Decodable, Identifiable{
    let id:Int
    let name:String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory:String


    //sample implementation of the data model added static so it is self contained and there's no recursively defined model within a model
    static let example = Location(id: 1, name: "Great Smoky Mountains", country: "United States", description: "test", more: "more test", latitude: 35.6532, longitude: -83.5070, heroPicture: "smokies", advisory: "Beware of the bears")
}
