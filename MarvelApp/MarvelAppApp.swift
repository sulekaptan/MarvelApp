//
//  MarvelAppApp.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 4.10.2024.
//

import SwiftUI

@main
struct MarvelAppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
