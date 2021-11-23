//
//  Goals.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 19/11/21.
//

import Foundation
import SwiftUI

struct GoalsCard: View {
    
    var cardText: String
    var cardImage: String
    var body: some View {
        
        ZStack {
            Image(cardImage)
                .resizable()
                .cornerRadius(25)
                .foregroundColor(.secondary)
            VStack {
                HStack {
                    Text(cardText)
                        .font(.system(size: 25))
                        .bold()
                        .padding()
                    Spacer()
                    NavigationLink(destination: {}, label: {
                        Image(systemName: "info.circle.fill")
                            .font(.system(size: 23))
                            .foregroundColor(.blue)
                            .padding()
                    })
                }
                .padding()
                Spacer()
            }
        }
        .frame(width: 350, height: 500, alignment: .center)
    }
}

