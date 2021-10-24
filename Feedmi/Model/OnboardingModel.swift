//
//  OnboardingModel.swift
//  Feedmi
//
//  Created by Roman Shimin on 10/23/21.
//

import SwiftUI

// MARK: - Onboarding data model

struct OnboardingItem: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
  
    
}
