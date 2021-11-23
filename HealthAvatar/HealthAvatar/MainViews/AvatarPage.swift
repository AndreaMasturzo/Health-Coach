//
//  AvatarPage.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 19/11/21.
//

import Foundation
import SwiftUI

struct AvatarPage: View {
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .center) {
                    
                ShownAvatar()  // Struct inside AvatarModel
                    .frame(width: 100, height: 200)
                    Spacer()
                    
                    AvatarStats(statImage: Image("Glass"), value: 0.5)  // Struct inside AvatarModel
                    
                    AvatarStats(statImage: Image("Cup"), value: 0.5)
                    
                    AvatarStats(statImage: Image("Bed"), value: 0.5)
                    
                    Spacer()
                }
            .padding()
            .frame(width: 400, height: 800)
                // Button that allows the user to access its profile by tapping it
                
        }
        .ignoresSafeArea()
    }
    
    
    struct AvatarPage_Previews: PreviewProvider {
        static var previews: some View {
            AvatarPage()
        }
    }
}
