//
//  AvatarPage.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 18/11/21.
//

import Foundation
import SwiftUI

// Single element to be put inside the model
public struct RecommendationElement: View {
    var recommendation: String
    var result: String
    
    public var body: some View {
        HStack {
            Text(recommendation)
            Spacer()
            Text(result)
        }
    }
}

// The button to edit data inside RecommendationsModel !FUNCTIONALITY TO ADD!
public struct RecommendationsEdit: View {
    public var body: some View {
            HStack {
                Spacer()
                VStack(alignment: .center) {
                    Button(action: {}, label: {Text("Edit")})
                        .padding(.bottom)
                    Spacer()
                    Text("Standard recommendations are based on WHO").font(.custom("SFCompact", size: 15)).foregroundColor(.gray)
                    Spacer()
                }
                Spacer()
            }
            .listRowInsets(EdgeInsets())
            .background(Color(UIColor.systemGroupedBackground))
    }
}

// Model to manage data shown into RecommendationsPage
struct RecommendationsModel: View {
    @State var drink = ""
    @State var eat = ""
    @State var sleep = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                Image("\(UserDefaults.standard.string(forKey: "avatar")!)")
                // To add the funcionality that shows selected avatar
                
                Form {
                    Section(header: Text("Recommendations")) {
                        RecommendationElement(recommendation: "Drink", result: "2L per day")
                        RecommendationElement(recommendation: "Sleep", result: "8h per day")
                        RecommendationElement(recommendation: "Steps", result: "10000 per day")
                    }
                // This code allows text and button to be shown inside the form without the blank space 
                HStack {
                    Spacer()
                    VStack(alignment: .center) {
                        Button(action: {}, label: {Text("Edit")})
                            .padding(.bottom)
                        Spacer()
                        Text("Standard recommendations are based on WHO").font(.custom("SFCompact", size: 15)).foregroundColor(.gray) // Change this text
                        Spacer()
                    }
                    Spacer()
                }
                .listRowInsets(EdgeInsets())
                .background(Color(UIColor.systemGroupedBackground))
                }
            }
        }
    }
}

struct RecommendationsModel_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationsModel()
    }
}
