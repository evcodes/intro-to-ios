//
//  WorldView.swift
//  Trekr
//
//  Created by Varela, Eddy on 5/30/21.
//

import MapKit
import SwiftUI

struct WorldView: View {
    
    // targets the environmant variables
    @EnvironmentObject var locations: Locations
    
    // signal that this is a property wrapper, giving control of the state over to SwiftUI to handle
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1276), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
    
    var body: some View {
        
        //create a two way binding so the movement changes onto the region variable
        Map(coordinateRegion: $region, annotationItems: locations.places){
            location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude), content: {
                NavigationLink(destination: ContentView(location: location)){
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 60, height:30)
                        .shadow(radius: 3)
                }
            }
        )}
            .navigationTitle("Locations")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
