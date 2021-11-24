//
//  Onboarding.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 14/11/21.
//

import Foundation
import SwiftUI


// A structure to style the button 
struct buttonConfig: View {
    var text = ""
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 300, height: 50)
            Text(text)
                .foregroundColor(.white)
        }
    }
}

// Single element forming Onboarding View
public struct OnboardingElement: View {
    
    public var titleText: String
    public var image: Image
    public var subtitleText: String
    
    public var body: some View {
        
        HStack {
            image
                .foregroundColor(.blue)
                .font(.system(size: 60))
            VStack {
                Text(titleText)
                    .font(.custom("SF Pro", size: 25))
                    .bold()
                    .frame(width: 250, alignment: .leading)
                Text(subtitleText)
                    .foregroundColor(.secondary)
                    .frame(width: 250, alignment: .leading)
            }
            .multilineTextAlignment(.leading)
            .padding(.bottom)
        }
    }
}

// Onboarding View
struct Onboarding: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            
            // View Title
            Text("Welcome to Health Avatar!")
                .font(.system(size: 45))
                .bold()
                .multilineTextAlignment(.center)
                .padding(.top)
                .padding(.top)
            
            // Composition of elements
            VStack {
                OnboardingElement(titleText: "Your Coah", image: Image(systemName: "person.fill"), subtitleText: "Choose a coach that will guide you troughout your journey")
                
                OnboardingElement(titleText: "Habits", image: Image(systemName: "heart.circle.fill"), subtitleText: "Get recommendations based on the World Health Organizations (WHO)")
                
                OnboardingElement(titleText: "Goals", image: Image(systemName: "target"), subtitleText: "Set your goals and try to achieve them everyday")
                
                OnboardingElement(titleText: "Reminder", image: Image(systemName: "bell.badge.circle.fill"), subtitleText: "Get a reminder if you're not sticking to your plan")
            }
            .frame(width: 350, height: 530, alignment: .center)
            .padding(.bottom)
            
            // Button at the bottom of the screen
            Button(action: {isPresented = false}, label: {
                buttonConfig(text: "Continue")
            })
                .padding(.bottom)
            Spacer()
        }
    }
}
