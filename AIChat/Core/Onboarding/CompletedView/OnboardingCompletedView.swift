//
//  OnboardingCompletedView.swift
//  AIChat
//
//  Created by 안다영 on 1/15/25.
//

import SwiftUI

struct OnboardingCompletedView: View {
    
    @Environment(AppState.self) private var root
    
    var body: some View {
        VStack {
            Text("Onboarding Completed!")
                .frame(maxHeight: .infinity)
            
            Button {
                // finish onboarding and endter app!
                onFinishButtonPressed()
            } label: {
                Text("Finish")
                    .callToActionButton()
            }
        }
        .padding(16)
    }
    
    func onFinishButtonPressed() {
        // other logic to complete onboarding
        root.updateViewState(showTabbarView: true)
    }
}

#Preview {
    OnboardingCompletedView()
        .environment(AppState())
}
