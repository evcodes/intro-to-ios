//
//  ContentView.swift
//  Trekr
//
//  Created by Varela, Eddy on 5/30/21.
//

import SwiftUI

struct ContentView: View {
    
    let location: Location
    
    var body: some View {
            ScrollView{
                    
                Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
                Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                
                Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .padding()
            
            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text(location.more)
                .padding()
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: .example)
    }
}
