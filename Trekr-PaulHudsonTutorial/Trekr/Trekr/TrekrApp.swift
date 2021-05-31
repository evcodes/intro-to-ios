//
//  TrekrApp.swift
//  Trekr
//
//  Created by Varela, Eddy on 5/30/21.
//

import SwiftUI

@main
struct TrekrApp: App {
    
    //class that is more complex, conforms to observable object
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle")
                    Text("Discover")
                }
                
                NavigationView{
                    WorldView()
                }.tabItem {
                    Image(systemName: "star.fill")
                    Text("World")
                }
                
                NavigationView{
                    TipsView()
                    
                }.tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            
            }.environmentObject(locations)
        }
    }
}
