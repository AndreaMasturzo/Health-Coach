//
//  EatingTips.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 23/11/21.
//

import Foundation
import SwiftUI

struct EatingTips: View {
    
    var body: some View {
        Form {
            Section(header: Text("What kind of food forms the base of healthy diet?")) {
                Text("Base your diet mainly on plant foods and reduce consumption of animal foods. Preferably cook foods on low heat, if possible for a short time, using little water and fat. Avoid ultra-processed foods.")
            }
            Section(header: Text("How to distribute food intake within the day?")) {
                Text("Eat 3 main daily meals with maximum daily energy contribution for breakfast of 20%, lunch 35%, dinner 25-30%, and morning and afternoon snack 5-10% each. Leave approximately 3 hours between meals.")
            }
            Section(header: Text("Which context is preferable for food intake?")) {
                Text("Take enough time and enjoy your food in a friendly environment. Turn off the TV or computer and put your phone aside.")
            }
            Section(header: Text("How to avoid overeating?")) {
                Text("Take enough time to eat and enjoy meals, don’t hurry. Hunger disappears 10-15 minutes after starting eating.")
            }
            Section(header: Text("How to keep healthy weight?")) {
                Text("Maintain a good balance between the amount of energy you obtain through food and drink and the amount of energy you expend through physical activity. Limit the intake of foods and drinks with high energy density and low nutritional quality such as sugary drinks, candy and snacks. Regular physical activity helps to maintain the body's energy balance.")
            }
        }
    }
}
