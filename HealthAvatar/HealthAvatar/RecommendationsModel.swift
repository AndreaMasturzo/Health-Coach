//
//  AvatarPage.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 18/11/21.
//

import Foundation
import SwiftUI

// Single element to be put inside the model
public struct RecommendationElement1: View {
    @Binding var inEditMode: Bool
    var recommendation: String
    @AppStorage("result1") var result1: String = ""
    
    public var body: some View {
        HStack {
            Text(recommendation)
                .foregroundColor(.secondary)

            Spacer()
            
            if inEditMode == true {

            TextField("", text: $result1)
                .multilineTextAlignment(.center)
                .keyboardType(.numberPad)
            } else {
                Text(result1)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

public struct RecommendationElement2: View {
    @Binding var inEditMode: Bool
    var recommendation: String
    @AppStorage("result2") var result2: String = ""
    
    public var body: some View {
        HStack {
            Text(recommendation)
                .foregroundColor(.secondary)

            Spacer()
            
            if inEditMode == true {

            TextField("", text: $result2)
                .multilineTextAlignment(.center)
                .keyboardType(.numberPad)
            } else {
                Text(result2)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

public struct RecommendationElement3: View {
    @Binding var inEditMode: Bool
    var recommendation: String
    @AppStorage("result3") var result3: String = ""
    
    public var body: some View {
        HStack {
            Text(recommendation)
                .foregroundColor(.secondary)

            Spacer()
            
            if inEditMode == true {

            TextField("", text: $result3)
                .multilineTextAlignment(.center)
                .keyboardType(.numberPad)
            } else {
                Text(result3)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

// The button to edit data inside RecommendationsModel !FUNCTIONALITY TO ADD!
public struct RecommendationsEdit: View {
    public var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .center) {
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

