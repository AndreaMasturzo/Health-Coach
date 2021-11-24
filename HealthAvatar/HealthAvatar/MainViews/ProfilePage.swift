//
//  ProfilePage.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 22/11/21.
//

import Foundation
import SwiftUI

struct ProfilePage: View {
    
    @State var editing = false
    @AppStorage("profileName") var profileName = ""
    @AppStorage("profileAge") var profileAge = ""
    @AppStorage("profileGender") var profileGender = ""
    @AppStorage("profileHeight") var profileHeight = ""
    @AppStorage("profileWeight") var profileWeight = ""
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        self.editing.toggle()
                        UserDefaults.standard.set(profileName, forKey: "profileName")
                        UserDefaults.standard.set(profileAge, forKey: "profileAge")
                        UserDefaults.standard.set(profileGender, forKey: "profileGender")
                        UserDefaults.standard.set(profileGender, forKey: "profileHeight")
                        UserDefaults.standard.set(profileGender, forKey: "profileWeight")
                    }, label: {
                        Text(editing ? "Done" : "Edit").font(.system(size: 20)).fontWeight(.light)
                            .foregroundColor(Color.blue)
                    })
                }
                HStack {
                    Text("Profile")
                        .font(.custom("SFCompact", size: 45))
                        .bold()
                        .padding()
                }
            }
            Spacer()
            Form {
                ProfileElement1(editing: $editing, labelText: "Name", nameValue: "\(UserDefaults.standard.string(forKey: "profileName")!)")
                ProfileElement2(editing: $editing, labelText: "Age", ageValue: "\(UserDefaults.standard.string(forKey: "profileAge")!)")
                ProfileElement3(editing: $editing, labelText: "Gender", genderValue: "\(UserDefaults.standard.string(forKey: "profileGender")!)")
                ProfileElement4(editing: $editing, labelText: "Height", heightValue: "\(UserDefaults.standard.string(forKey: "profileHeight")!)")
                ProfileElement5(editing: $editing, labelText: "Weight", weightValue: "\(UserDefaults.standard.string(forKey: "profileWeight")!)")
                AvatarChange()
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
