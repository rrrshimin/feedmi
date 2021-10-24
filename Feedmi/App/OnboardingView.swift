//
//  OnboardingView.swift
//  Feedmi
//
//  Created by Roman Shimin on 10/23/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties
    var onboardingItem: [OnboardingItem] = onboardingData
    
    // MARK: - Body
    var body: some View {
        VStack {
            TabView {
                ForEach(onboardingItem[0...2]) { item in
                    OnboardingCardView(onboarding: item)
                } //: Loop
                .background(Color.accentColor)
            } //: TabView
            .tabViewStyle(PageTabViewStyle())
            .padding(.top, -30)
            .padding(.bottom, 5)
            .background(Color.accentColor)
            // Button
            OnboardingButtonView()
                .padding(.horizontal, 15)
                .cornerRadius(8)
            
        }
        
        .frame (minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .padding(.vertical, 30)
        .background(Color.accentColor)
        .preferredColorScheme(.dark)
    }
}

// MARK: - Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(onboardingItem: onboardingData)
    }
}
