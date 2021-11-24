//
//  Notifications.swift
//  HealthAvatar
//
//  Created by Andrea Masturzo on 23/11/21.
//

import Foundation
import SwiftUI

class NotificationManager {
    static let instance = NotificationManager()


    func notify() {
        let content = UNMutableNotificationContent()
        content.title = "Message"
        content.body = "Hey! Aren't you forgetting something? 🤔"
        content.sound = .default
        let trigger = UNTimeIntervalNotificationTrigger (timeInterval: 60, repeats: false)

        let req = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

        UNUserNotificationCenter.current().add(req, withCompletionHandler: nil)
    }
}
