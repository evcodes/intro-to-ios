//
//  TipsView.swift
//  Trekr
//
//  Created by Varela, Eddy on 5/30/21.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tip]
    
    init(){
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        
        let tipData = try! Data(contentsOf: url) //loading in file into a useable data object format
        
        //converting data into location object
        tips = try! JSONDecoder().decode([Tip].self, from: tipData) // needed to make location conform to the decodable type
    }
    
    var body: some View {
        //since each tip is unique but does not have unique ids use the key path as the uid
        List(tips, id: \.text, children: \.children ){tip in
            if tip.children != nil{
                Label( tip.text, systemImage: "quote.bubble")
                    .font(.headline)
            }else{
                Text(tip.text)
            }
            
        }.navigationTitle("Tips")
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
