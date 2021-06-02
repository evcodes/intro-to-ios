//
//  Login.swift
//  customUI
//
//  Created by Varela, Eddy on 6/1/21.
//

import SwiftUI

struct Login: View {
    @State var userName:String = ""
    @State var password:String = ""
    var body: some View {
        VStack {
            VStack{
                Text("Welcome to your app")
                TextField("Username", text: $userName)
                    .disableAutocorrection(true)
                    .padding()
                TextField("Password", text: $password)
                    .textContentType(.password)
                    .padding()
                
            }.padding()
            
            HStack{
                
                NavigationLink(
                    destination: Register(),
                    label: {
                        Text("Register a new user")
                    })
                
                Button(action: {
                    let _ = print("Loggin button pressed")
                    
                }) {
                    Text("Login")
                }
            }
            
        }
    }
}


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
