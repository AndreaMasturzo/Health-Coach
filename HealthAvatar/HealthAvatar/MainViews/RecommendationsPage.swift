//
//  RecommendationsPage.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 21/11/21.
//

import Foundation
import SwiftUI

struct RecommendationsPage: View {
    
    var body: some View {
        
        VStack {
            Image("\(UserDefaults.standard.string(forKey: "avatar")!)")  // !Add the functionality that shows the avatar that the user selected!
            Spacer()
            Form {
                Section(header: Text("Recommendations")) {
                    RecommendationElement(recommendation: "Drink", result: "2L per day")         // Struct inside RecommendationsModel
                    RecommendationElement(recommendation: "Sleep", result: "8h per day")         // Struct inside RecommendationsModel
                    RecommendationElement(recommendation: "Steps", result: "10000 per day")      // Struct inside RecommendationsModel
                }
                RecommendationsEdit()       // Struct inside RecommendationsModel
            }
            NavigationLink(destination: HomePage(), label: {
                buttonConfig(text: "Done")// Struct inside OnBoarding
            })
        }
    }
}


struct RecommendationsPage_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationsPage()
    }
}
