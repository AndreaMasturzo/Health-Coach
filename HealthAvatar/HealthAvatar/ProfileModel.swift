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
            Spacer()
            if avatar == newSelectedAvatar {
                Image(systemName: "checkmark.circle.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.accentColor)
            }
        }   .onTapGesture {
            self.newSelectedAvatar = self.avatar
            UserDefaults.standard.set(self.avatar, forKey: "avatar")
        }
    }
}



struct ProfileElement: View {
    var labelText: String
    var textValue: String
    
    var body: some View {
        HStack {
            Text(labelText)
                .foregroundColor(.secondary)
            Spacer()
            Text(textValue)
        }
    }
}

struct ProfileModel: View {
    var body: some View {
        
        
        VStack {
            Form {
                ProfileElement(labelText: "Name", textValue: "\(UserDefaults.standard.string(forKey: "name")!)")
                ProfileElement(labelText: "Age", textValue: "\(UserDefaults.standard.string(forKey: "age")!)")
                ProfileElement(labelText: "Gender", textValue: "\(UserDefaults.standard.string(forKey: "gender")!)")
                ProfileElement(labelText: "Height", textValue: "\(UserDefaults.standard.string(forKey: "height")!)")
                ProfileElement(labelText: "Weight", textValue: "\(UserDefaults.standard.string(forKey: "weight")!)")
                AvatarChange()
            }
            
            .toolbar {
                Button(action: {
                    
                }, label: {
                    Text("Save")
                })
            }
        }
    }
    
    
}


