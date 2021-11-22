//
//  ProfilePage.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 22/11/21.
//

import Foundation
import SwiftUI

struct ProfilePage: View {
   
    var body: some View {
        NavigationView {
            VStack {
                ProfileModel()
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
