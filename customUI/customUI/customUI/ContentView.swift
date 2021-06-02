//
//  ContentView.swift
//  customUI
//
//  Created by Varela, Eddy on 6/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
        Text("Test view")
            .padding()
        
        NavigationLink(
            destination: Login(),
            label: {
                Text("Login to app")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
