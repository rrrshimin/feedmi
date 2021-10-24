//
//  FeedmiApp.swift
//  Feedmi
//
//  Created by Roman Shimin on 10/23/21.
//

import SwiftUI

@main
struct FeedmiApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}

