//
//  TipFile.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 23/11/21.
//

import Foundation

public struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
