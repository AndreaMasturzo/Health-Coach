//
//  AvatarModel.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 19/11/21.
//

import Foundation
import SwiftUI


// Structure that defines the avatar that is shown on top of AvatarPage
public struct ShownAvatar: View {
    @State var newAvatar = UserDefaults.standard.string(forKey: "avatar")!
    public var body: some View {
        Image(newAvatar)
            .resizable()
            .frame(width: 300, height: 300)
            .onAppear {
                newAvatar = UserDefaults.standard.string(forKey: "avatar")!
            }
    }
}

// Structure that defines the Stats shown inside AvatarPage
struct AvatarStats1: View {
    
    var statImage1: Image
    
    @State var value1: Double = 0
    
    @State var drinkingAlert = false
    
    var totalValue1 = Double(UserDefaults.standard.string(forKey: "drink")!)!
    
    var body: some View {
        
        VStack {
            HStack {
                // Static image shown next to the ProgressView
                statImage1
                    .frame(width: 40, height: 40)
                    .padding()
                Spacer()
                
                // !Add somenthing when completed!
                VStack {
                    Text("\(UserDefaults.standard.string(forKey: "drink")!) liters")
                        .foregroundColor(.secondary)
                    ProgressView(value: value1, total: totalValue1)
                }
                
                // Working whith the value of the ProgressView
                Stepper(label: {}, onIncrement: {
                    value1 += 1
                    if value1 == totalValue1 {
                        drinkingAlert.toggle()
                    }
                    
                }, onDecrement: {value1 -= 1})
                    .padding()
                Spacer()
            }
            .alert("Congratulations!", isPresented: $drinkingAlert, actions: {}, message: {Text("You completed your drinking goal for the day!")})
        }
    }
}

struct AvatarStats2: View {
    
    var statImage2: Image
    @State var value2: Double = 0
    var totalValue2 = Double(UserDefaults.standard.string(forKey: "meals")!)!
    @State var eatingAlert = false
    var body: some View {
        
        VStack {
            HStack {
                // Static image shown next to the ProgressView
                statImage2
                    .frame(width: 40, height: 40)
                    .padding()
                Spacer()
                
                // !Add somenthing when completed!
                VStack {
                    Text("\(UserDefaults.standard.string(forKey: "meals")!) meals")
                        .foregroundColor(.secondary)
                    ProgressView(value: value2, total: totalValue2)
                }
                
                // Working whith the value of the ProgressView
                Stepper(label: {}, onIncrement: {
                    value2 += 1
                    if value2 == totalValue2 {
                        eatingAlert.toggle()
                    }
                }, onDecrement: {value2 -= 1})
                    .padding()
                Spacer()
            }
            .alert("Congratulations!", isPresented: $eatingAlert, actions: {}, message: {Text("You completed your meals goal for the day!")})
        }
    }
}

struct AvatarStats3: View {
    
    var statImage3: Image
    @State var value3: Double
    var totalValue3 = Double(UserDefaults.standard.string(forKey: "sleep")!)!
    @State var sleepingAlert = false

    var body: some View {
        
        VStack {
            HStack {
                // Static image shown next to the ProgressView
                statImage3
                    .frame(width: 40, height: 40)
                    .padding()
                Spacer()
                
                // !Add somenthing when completed!
                VStack {
                    Text("\(UserDefaults.standard.string(forKey: "sleep")!) hours")
                        .foregroundColor(.secondary)
                    ProgressView(value: value3, total: totalValue3)
                }
                
                // Working whith the value of the ProgressView
                Stepper(label: {}, onIncrement: {
                    value3 += 1
                    if value3 == totalValue3 {
                        sleepingAlert.toggle()
                    }
                }, onDecrement: {value3 -= 1})
                    .padding()
                Spacer()
            }
            .alert("Congratulations!", isPresented: $sleepingAlert, actions: {}, message: {Text("You completed your sleeping goal for the day!")})
        }
    }
}
