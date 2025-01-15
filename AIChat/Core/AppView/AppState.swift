//
//  AppState.swift
//  AIChat
//
//  Created by 안다영 on 1/15/25.
//
import SwiftUI

@Observable
class AppState {
    
    private(set) var showTabbar: Bool {
        didSet {
            UserDefaults.showTabbarView = showTabbar
        }
    }
    
    init(showTabbar: Bool = UserDefaults.showTabbarView) {
        self.showTabbar = showTabbar
    }
    
    func updateViewState(showTabbarView: Bool) {
        showTabbar = showTabbarView
    }
}

extension UserDefaults {
    
    private struct Keys {
        static let showTabbarView = "showTabbarView"
    }
    
    static var showTabbarView: Bool {
        get {
            standard.bool(forKey: Keys.showTabbarView)
        }
        set {
            standard.set(newValue, forKey: Keys.showTabbarView)
        }
    }
}
