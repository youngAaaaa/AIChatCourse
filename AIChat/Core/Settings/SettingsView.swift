//
//  SettingsView.swift
//  AIChat
//
//  Created by 안다영 on 1/15/25.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) private var dismiss
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
        dismiss()
        
        Task {
            try? await Task.sleep(for: .seconds(1))
            appState.updateViewState(showTabbarView: false)
        }
    }
}

#Preview {
    SettingsView()
}
