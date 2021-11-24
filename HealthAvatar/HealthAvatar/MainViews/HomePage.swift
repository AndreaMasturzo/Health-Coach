//
//  TabBar.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 19/11/21.
//

import Foundation
import SwiftUI



struct HomePage: View {

    @State private var presentProfileSheet = false
    
    // This is to change tabBar appearance (background color only)
    init() {
            UITabBar.appearance().backgroundColor = UIColor.secondarySystemFill
        }
    
    var body: some View {
        // All the code to manage the tab view and its buttons
        TabView() {
           GoalsPage().tabItem {
                Image(systemName: "target")
                Text("Goals")
            }.tag(2)
            
            AvatarPage().tabItem {
                Image(systemName: "person.fill")
                Text("Coach")
            }.tag(1)
            ProfilePage().tabItem {
                Image(systemName: "gearshape.2.fill")
                Text("Profile")
            }.tag(3)
        }
        .navigationBarHidden(true)
          // Hiding the back button because user is not supposed to go back from here
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
