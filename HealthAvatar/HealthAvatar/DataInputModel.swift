//
//  DataInputModel.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 16/11/21.
//

import Foundation
import SwiftUI

// A structure to manage the selection of the avatar and its picker
public struct ImageInput : View {
    
    var avatars = ["HalfAvatar1", "HalfAvatar2", "HalfAvatar3", "HalfAvatar4", "HalfAvatar5", "HalfAvatar6", "HalfAvatar7", "HalfAvatar8"]
    @State var selectedAvatar: String? = nil
    
    public var body: some View {
        Picker("Choose Your Coach", selection: $selectedAvatar) {
            ForEach(avatars, id: \.self) { item in
                SelectionCell(avatar: item, selectedAvatar: self.$selectedAvatar)
            }
        }
    }
}

// A structure to manage the element inside the Coach Picker
public struct SelectionCell: View {
    
    public let avatar: String
    @Binding var selectedAvatar: String?
    
    public var body: some View {
        HStack {
            Image(avatar)
            Spacer()
            if avatar == selectedAvatar {
                Image(systemName: "checkmark.circle.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.accentColor)
            }
        }   .onTapGesture {
            self.selectedAvatar = self.avatar
            UserDefaults.standard.set(self.avatar, forKey: "avatar")
        }
    }
}


// The all struct to input user data
public struct DataInput : View {
    
    @AppStorage("name") var name: String = ""
    @AppStorage("gender") var gender : String = ""
    @AppStorage("age") var age = ""
    @AppStorage("height") var height =  ""
    @AppStorage("weight") var weight = ""
    @State var selectedGender = UserDefaults.standard.string(forKey: "selectedGender")
    @AppStorage("avatar") var avatar = ""
    
    let genders = ["Male", "Female", "Non Binary", "Prefer not to say"]
    
    public var body: some View {
        
            VStack {
                Form {
                    Section(header: Text("Profile")) {
                        TextField(text: $name, prompt: Text("Name"), label: {})
                            .disableAutocorrection(true)
                        
                        Picker("Gender", selection: $gender) {
                            ForEach(genders, id: \.self) { gender in
                                Text("\(gender)")
                            }
                        }
                        
                        TextField(text: $age, prompt: Text("Age"), label: {Text("yess")})
                            .keyboardType(.numberPad)

                        TextField(text: $height, prompt: Text("Height"), label: {})
                            .keyboardType(.numberPad)
                        
                        TextField(text: $weight, prompt: Text("Weight"), label: {})
                            .keyboardType(.numberPad)

                    }
                    Section {
                        HStack {
                            Spacer()
                            ImageInput()  // Structure on top of this page
                            Spacer()
                        }
                    }
                }
                .cornerRadius(10)
                
                NavigationLink(destination: RecommendationsPage(), label: {
                    buttonConfig(text: "Done")  // buttonConfig declared inside Onboarding
                })
                    .foregroundColor(.blue)
                    .onTapGesture {
                        UserDefaults.standard.set(self.name, forKey: "name")                   // This should set data to be stored
                        UserDefaults.standard.set(self.selectedGender, forKey: "gender")
                        UserDefaults.standard.set(self.age, forKey: "age")
                        UserDefaults.standard.set(self.height, forKey: "height")
                        UserDefaults.standard.set(self.weight, forKey: "weight")
                    }
            }
            .padding()
    }
}



struct DataInput_Previews: PreviewProvider {
    static var previews: some View {
        DataInput()
    }
}

