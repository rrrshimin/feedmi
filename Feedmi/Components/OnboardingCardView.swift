//
//  OnboardingCardView.swift
//  Feedmi
//
//  Created by Roman Shimin on 10/23/21.
//

import SwiftUI

struct OnboardingCardView: View {
    // MARK: - Properties
    var onboarding: OnboardingItem
    @State private var isAnimating: Bool = false
    
    
    // MARK: -  Body
    var body: some View {
        ZStack {
            VStack (spacing: 20) {
                
                // Fruit Image
                Image (onboarding.image)
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                    .padding(.vertical, -76)
                
                // Fruit Title
                Text(onboarding.title)
                    .foregroundColor(Color.white)
                    .font(Font.custom("BalooChettan2-Bold", size: 33))
                    .lineSpacing(0)
                    .multilineTextAlignment(.center)
                    
                
                // Fruit Headline
                Text(onboarding.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .padding(.top, -8)
                    .frame (maxWidth: 480)
                    .font(Font.custom("Mulish-Regular", size: 17))
                    .lineSpacing(5)
                
                
            } //: VStack
        } //: ZStack
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame (minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(Color.accentColor)
        .cornerRadius(0)
        .padding(.horizontal, 20)
        .padding(.bottom, -80)
    }
}

// MARK: - Preview

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView(onboarding: onboardingData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
