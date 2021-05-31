//
//  Locations.swift
//  Trekr
//
//  Created by Varela, Eddy on 5/30/21.
//

import Foundation

//SwiftUI will watch this for changes and automatically update the view when it changes
// in this case, the data won't change but in other scenarios, it might
class Locations: ObservableObject{
    let places: [Location]
    
    //public instance variable that can be used whenever Locations is initialized
    var primary: Location{
        places[1]
    }
    
    // looks for the file from ios bundle
    init(){
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        
        let locationData = try! Data(contentsOf: url) //loading in file into a useable data object format
        
        //converting data into location object
        places = try! JSONDecoder().decode([Location].self, from: locationData) // needed to make location conform to the decodable type
    }
}
