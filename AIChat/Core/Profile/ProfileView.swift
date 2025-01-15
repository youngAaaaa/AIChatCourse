//
//  ProfileView.swift
//  AIChat
//
//  Created by 안다영 on 1/13/25.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var showSettingView: Bool = false
    
    var body: some View {
        NavigationStack {
            Text("Profile")
                .navigationTitle("Profile")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        settingButton
                    }
                }
        }
        .sheet(isPresented: $showSettingView) {
            SettingsView()
        }
    }
    
    private var settingButton: some View {
        Button {
            onSettingButtonPressed()
        } label: {
            Image(systemName: "gear")
                .font(.headline)
        }
        
    }
    
    private func onSettingButtonPressed() {
        showSettingView = true
    }
}

#Preview {
    ProfileView()
}
