//
//  OnboardingButtonView.swift
//  Feedmi
//
//  Created by Roman Shimin on 10/23/21.
//

import SwiftUI

struct OnboardingButtonView: View {
    // MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - Body
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            
            Text("Get started")
            .foregroundColor(Color.accentColor)
            .background(Color.white)
            .frame (minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 52, alignment: .center)
            .padding(.horizontal, 24)
            .padding(.vertical, 20)
            .cornerRadius(8)
            .font(Font.custom("Mulish-Bold", size: 17))
            
            .font(.headline)
        } //: Button
        .foregroundColor(Color.accentColor)
        .frame (minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 54, alignment: .center)
        
        .background(Color.white)
        .cornerRadius(10)
        
    }
}


// MARK: - Preview
struct OnboardingButtonView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
