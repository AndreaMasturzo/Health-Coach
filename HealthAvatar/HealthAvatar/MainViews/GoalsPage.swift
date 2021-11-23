//
//  GoalsModel.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 23/11/21.
//

import Foundation
import SwiftUI

struct GoalsPage: View {
    var body: some View {
        ScrollView {
            GoalsCard(cardText: "Hydration", cardImage: "Hydratation")
            GoalsCard(cardText: "Nutrition", cardImage: "Nutrition")
            GoalsCard(cardText: "Sleep", cardImage: "Sleep")
            
        }
        .padding()
    }
}

struct GoalsPage_Previews: PreviewProvider {
    static var previews: some View {
        GoalsPage()
    }
}


