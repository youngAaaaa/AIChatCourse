//
//  AppView.swift
//  AIChat
//
//  Created by 안다영 on 1/13/25.
//

import SwiftUI

// tabbar - signed in
// onboarding - signed out

struct AppView: View {
    
    @AppStorage("showTabbarView") var showTabber: Bool = false
    
    var body: some View {
        AppViewBuilder(
            showTabber: showTabber,
            tabbarView: {
                TabBarView()
            },
            onboardingView: {
                WelcomeView()
            }
        )
    }
}

#Preview("AppView - Tabbar") {
    AppView(showTabber: true)
}

#Preview("AppView - Onboarding") {
    AppView(showTabber: false)
}
