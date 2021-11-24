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
    
    var avatars = ["HalfAvatar1", "HalfAvatar2", "HalfAvatar3", "HalfAvatar4"]
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
        }
        .frame(width: 370, height: 200, alignment: .center)
        .onTapGesture {
            self.selectedAvatar = self.avatar
            UserDefaults.standard.set(self.avatar, forKey: "avatar")
        }
    }
}


// The all struct to input user data
public struct DataInput : View {    
    @AppStorage("profileName") var name: String = ""
    @AppStorage("profileGender") var gender : String = ""
    @AppStorage("profileAge") var age = ""
    @AppStorage("profileHeight") var height =  ""
    @AppStorage("profileWeight") var weight = ""
    @State var selectedGender = UserDefaults.standard.string(forKey: "selectedGender")
    @AppStorage("avatar") var avatar = ""
    
    let genders = ["Male", "Female", "Non Binary", "Prefer not to say"]
    
    public var body: some View {
        
        VStack {
            Form {
                Section(header: Text("Profile")) {
                    HStack {
                        Text("Name")
                        Spacer()
                        TextField("", text: $name, prompt: Text("Type..."))
                            .multilineTextAlignment(.trailing)
                            .disableAutocorrection(true)
                    }
                    Picker("Gender", selection: $gender) {
                        ForEach(genders, id: \.self) { gender in
                            Text("\(gender)")
                        }
                    }
                    HStack {
                        Text("Age")
                        Spacer()
                        TextField("", text: $age, prompt: Text("Type..."))
                            .multilineTextAlignment(.trailing)
                            .keyboardType(.numberPad)
                    }
                    HStack {
                        Text("Height")
                        Spacer()
                        TextField("", text: $height, prompt: Text("Type..."))
                            .multilineTextAlignment(.trailing)
                            .keyboardType(.numberPad)
                        Text("cm")
                    }
                    HStack {
                        Text("Weight")
                        Spacer()
                        TextField("", text: $weight, prompt: Text("Type..."))
                            .multilineTextAlignment(.trailing)
                            .keyboardType(.numberPad)
                        Text("kg")
                    }
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
                    UserDefaults.standard.set(self.name, forKey: "profileName")                   // This should set data to be stored
                    UserDefaults.standard.set(self.selectedGender, forKey: "profileGender")
                    UserDefaults.standard.set(self.age, forKey: "profileAge")
                    UserDefaults.standard.set(self.height, forKey: "profileHeight")
                    UserDefaults.standard.set(self.weight, forKey: "profileWeight")
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

