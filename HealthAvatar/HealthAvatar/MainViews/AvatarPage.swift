//
//  AvatarPage.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 19/11/21.
//

import Foundation
import SwiftUI

struct AvatarPage: View {
    
    let drinikingValue = Double(UserDefaults.standard.string(forKey: "drink")!)
    let eatingValue = Double(UserDefaults.standard.string(forKey: "meals")!)
    let sleepingValue = Double(UserDefaults.standard.string(forKey: "sleep")!)
    
    
    var body: some View {
        
        VStack(alignment: .center) {
            Spacer()
            ShownAvatar() // Struct inside AvatarModel
            
                .frame(width: 100, height: 200)
            Spacer()
            
            AvatarStats1(statImage1: Image("Glass"), value1: 0)  // Struct inside AvatarModel
            
            AvatarStats2(statImage2: Image("Cup"), value2: 0)
            
            AvatarStats3(statImage3: Image("Bed"), value3: 0)
            
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .padding()
        .frame(width: 400, height: 800)
        // Button that allows the user to access its profile by tapping it
    }
    
    
    
    struct AvatarPage_Previews: PreviewProvider {
        static var previews: some View {
            AvatarPage()
        }
    }
}
