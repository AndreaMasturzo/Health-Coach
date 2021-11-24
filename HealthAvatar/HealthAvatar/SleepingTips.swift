//
//  SleepingTips.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 23/11/21.
//

import Foundation
import SwiftUI

struct SleepingTips: View {
    
    var body: some View {
        Form {
            Section(header: Text("How to improve sleep quality??")) {
                Text("Go to bed and get up at the same times each day. Sleep in a dark and quiet room with comfortable temperature. Do something to help you relax before bedtime.")
            }
            Section(header: Text("What should be avoided for better sleep?")) {
                Text("Avoid caffeine, nicotine and alcohol before bedtime. Don’t exercise eat a large meal before you go to sleep. Don’t take a nap after 3 p.m. Remove electronic devices, such as TVs, computers and smart phones from the bedroom.")
            }
            Section(header: Text("Which sleep problems require consultation with doctor?")) {
                Text("Talk to your doctor if you fall asleep during the day, snore or make choking sounds in your sleep, have odd feelings in your legs or feel like you need to move your legs.")
            }
        }
    }
}
