//
//  AvatarModel.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 19/11/21.
//

import Foundation
import SwiftUI


// Structure that defines the avatar that is shown on top of AvatarPage
public struct ShownAvatar: View {
    @State var newAvatar = UserDefaults.standard.string(forKey: "avatar")!
    public var body: some View {
        Image(newAvatar)
            .resizable()
            .frame(width: 300, height: 300)
            .onTapGesture {
                newAvatar = UserDefaults.standard.string(forKey: "avatar")!
            }
    }
}

// Structure that defines the Stats shown inside AvatarPage
struct AvatarStats: View {
    
    var statImage: Image
    @State var value: Double
    
    var body: some View {
        
        VStack {
            HStack {
                // Static image shown next to the ProgressView
                statImage
                    .frame(width: 40, height: 40)
                    .padding()
                Spacer()
                
                // !Add somenthing when completed!
                ProgressView(value: value)
                
                // Working whith the value of the ProgressView
                Stepper(label: {}, onIncrement: {value += 0.1}, onDecrement: {value -= 0.1})
                    .padding()
                Spacer()
            }
        }
    }
}


