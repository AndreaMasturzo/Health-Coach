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
           AvatarPage().tabItem {
                Image(systemName: "person.fill")
                Text("Goals")
            }.tag(1)
            
            GoalsPage().tabItem {
                Image(systemName: "gift")
                Text("Rewards")
            }.tag(2)
        }
        .toolbar{
            Button(action: {
                presentProfileSheet.toggle()
            }, label: {
                Image(systemName: "person.circle.fill")
            })
                .sheet(isPresented: $presentProfileSheet, content: {
                    ProfilePage()
                })
    }
        .navigationBarBackButtonHidden(true)  // Hiding the back button because user is not supposed to go back from here
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
