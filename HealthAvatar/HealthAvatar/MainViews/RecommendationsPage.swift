//
//  RecommendationsPage.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 21/11/21.
//

import Foundation
import SwiftUI

struct RecommendationsPage: View {
    @State var inEditMode = false
    @AppStorage("drink") var drink: String = "2"
    @AppStorage("meals") var meals: String = "5"
    @AppStorage("sleep") var sleep: String = "8"
    
    var body: some View {
        VStack {
            Image("\(UserDefaults.standard.string(forKey: "avatar")!)")  // !Add the functionality that shows the avatar that the user selected!
            Spacer()
            Form {
                Section(header: Text("Recommendations")) {
                    HStack{
                    RecommendationElement1(inEditMode: $inEditMode, recommendation: "Drink", result1: drink)
                        Text("liters per day")
                            .foregroundColor(.secondary)
                    }
                    HStack {
                    RecommendationElement2(inEditMode: $inEditMode, recommendation: "Sleep", result2: sleep)
                        Text("hours per day")
                            .foregroundColor(.secondary)
                    }
                    HStack {
                    RecommendationElement3(inEditMode: $inEditMode, recommendation: "Meals", result3: meals)
                        Text("times per day")
                            .foregroundColor(.secondary)
                    }
                }
                RecommendationsEdit()       // Struct inside RecommendationsModel
            }
            NavigationLink(destination: HomePage(), label: {
                buttonConfig(text: "Done")// Struct inside OnBoarding
            })
        }
        .toolbar {
            Button(action: {
                self.inEditMode.toggle()
                UserDefaults.standard.set(drink, forKey: "drink")
                UserDefaults.standard.set(meals, forKey: "meals")
                UserDefaults.standard.set(sleep, forKey: "sleep")
            }, label: {
                Text(inEditMode ? "Done" : "Edit").font(.system(size: 20)).fontWeight(.light)
                                .foregroundColor(Color.blue)
            })
        }
    }
}


struct RecommendationsPage_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationsPage()
    }
}
