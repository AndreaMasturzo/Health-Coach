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
            GoalsCard1(cardText: "Hydration", cardImage: "Hydratation")
            GoalsCard2(cardText: "Nutrition", cardImage: "Nutrition")
            GoalsCard3(cardText: "Sleep", cardImage: "Sleep")
            
        }
        .frame(width: 300, height: 750)
        .padding()
        .navigationBarHidden(true)
    }
}

struct GoalsPage_Previews: PreviewProvider {
    static var previews: some View {
        GoalsPage()
    }
}


