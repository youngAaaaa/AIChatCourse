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
    
//    @AppStorage("showTabbarView") var showTabber: Bool = false
    @State var appState: AppState = AppState()
    
    var body: some View {
        AppViewBuilder(
            showTabber: appState.showTabbar,
            tabbarView: {
                TabBarView()
            },
            onboardingView: {
                WelcomeView()
            }
        )
        .environment(appState)
    }
}

#Preview("AppView - Tabbar") {
    AppView(appState: AppState(showTabbar: true))
}

#Preview("AppView - Onboarding") {
    AppView(appState: AppState(showTabbar: false))
}
