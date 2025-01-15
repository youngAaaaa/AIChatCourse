//
//  SettingsView.swift
//  AIChat
//
//  Created by 안다영 on 1/15/25.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(AppState.self) private var appState
    
    var body: some View {
        NavigationStack {
            List {
                Button {
                    onSignOutPressed()
                } label: {
                    Text("Sign out")
                }

            }
            .navigationTitle("Settings")
        }
    }
    
    func onSignOutPressed() {
        // do some logic to sign user out of app!
        appState.updateViewState(showTabbarView: false)
    }
}

#Preview {
    SettingsView()
}
