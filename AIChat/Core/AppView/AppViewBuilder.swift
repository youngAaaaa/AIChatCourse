//
//  AppViewBuilder.swift
//  AIChat
//
//  Created by 안다영 on 1/13/25.
//

import SwiftUI

struct AppViewBuilder<TabbarView: View, OnboardingView: View>: View {
    
    var showTabber: Bool = false
    @ViewBuilder var tabbarView: TabbarView
    @ViewBuilder var onboardingView: OnboardingView
    
    var body: some View {
        ZStack {
            if showTabber {
                tabbarView
                    .transition(.move(edge: .trailing))
            } else {
                onboardingView
                    .transition(.move(edge: .leading))
            }
        }
        .animation(.smooth, value: showTabber)
    }
}

private struct PreviewView: View {
    
    @State private var showTabber: Bool = false
    
    var body: some View {
        AppViewBuilder(
            showTabber: showTabber,
            tabbarView: {
                ZStack {
                    Color.red.ignoresSafeArea()
                    Text("Tabbar")
                }
            },
            onboardingView: {
                ZStack {
                    Color.blue.ignoresSafeArea()
                    Text("Onboarding")
                }
            }
        )
        .onTapGesture {
            showTabber.toggle()
        }
    }
}

#Preview {
    PreviewView()
}
