//
//  ProfilePage.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 20/11/21.
//

import Foundation
import SwiftUI

public struct AvatarChange : View {
    
    var avatars = ["HalfAvatar1", "HalfAvatar2", "HalfAvatar3", "HalfAvatar4"]
    @State var newSelectedAvatar: String? = nil
    
    public var body: some View {
        Picker("Choose Your Coach", selection: $newSelectedAvatar) {
            ForEach(avatars, id: \.self) { item in
                NewSelectionCell(avatar: item, newSelectedAvatar: self.$newSelectedAvatar)
            }
        }
    }
}

public struct NewSelectionCell: View {
    
    public let avatar: String
    @Binding var newSelectedAvatar: String?
    
    public var body: some View {
        HStack {
            Image(avatar)
        }
        .frame(width: 370, height: 200, alignment: .center)
        .onTapGesture {
            self.newSelectedAvatar = self.avatar
            UserDefaults.standard.set(self.avatar, forKey: "avatar")
        }
    }
}

//HStack {
//    Text(recommendation)
//        .foregroundColor(.secondary)
//
//    Spacer()
//
//    if inEditMode == true {
//
//    TextField("", text: $result1)
//        .multilineTextAlignment(.center)
//        .keyboardType(.numberPad)
//    } else {
//        Text(result1)
//            .foregroundColor(.gray)
//            .multilineTextAlignment(.center)
//    }
//}


struct ProfileElement1: View {
    @Binding var editing: Bool
    var labelText: String
    @AppStorage("profileName")var nameValue: String = ""
    
    var body: some View {
        HStack {
            Text(labelText)
                .foregroundColor(.secondary)
            Spacer()
            if editing == true {
                TextField("", text: $nameValue)
            } else {
                Text(nameValue)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct ProfileElement2: View {
    @Binding var editing: Bool
    var labelText: String
    @AppStorage("profileAge")var ageValue: String = ""
    
    var body: some View {
        HStack {
            Text(labelText)
                .foregroundColor(.secondary)
            Spacer()
            if editing == true {
                TextField("", text: $ageValue)
                    .keyboardType(.numberPad)
            } else {
                Text(ageValue)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct ProfileElement3: View {
    @Binding var editing: Bool
    var labelText: String
    @AppStorage("profileGender")var genderValue: String = ""
    
    let genders = ["Male", "Female", "Non Binary", "Prefer not to say"]
    
    var body: some View {
        HStack {
            Text(labelText)
                .foregroundColor(.secondary)
            Spacer()
            if editing == true {
                TextField("", text: $genderValue)
            } else {
                Text(genderValue)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct ProfileElement4: View {
    @Binding var editing: Bool
    var labelText: String
    @AppStorage("profileHeight")var heightValue: String = ""
    
    var body: some View {
        HStack {
            Text(labelText)
                .foregroundColor(.secondary)
            Spacer()
            if editing == true {
                TextField("", text: $heightValue)
                    .keyboardType(.numberPad)
            } else {
                Text(heightValue)
                    .foregroundColor(.gray)
            }
            Text("cm")
                .foregroundColor(.secondary)
        }
    }
}

struct ProfileElement5: View {
    @Binding var editing: Bool
    var labelText: String
    @AppStorage("profileWeight")var weightValue: String = ""
    
    var body: some View {
        HStack {
            Text(labelText)
                .foregroundColor(.secondary)
            Spacer()
            if editing == true {
                TextField("", text: $weightValue)
                    .keyboardType(.numberPad)
            } else {
                Text(weightValue)
                    .foregroundColor(.gray)
            }
            Text("Kg")
                .foregroundColor(.secondary)
        }
    }
}




    
    



