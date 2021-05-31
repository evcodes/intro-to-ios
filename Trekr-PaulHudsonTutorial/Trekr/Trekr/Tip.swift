//
//  Tip.swift
//  Trekr
//
//  Created by Varela, Eddy on 5/30/21.
//

import Foundation

struct Tip: Decodable{
    let text: String
    let children: [Tip]?
}
