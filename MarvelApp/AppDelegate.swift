//
//  AppDelegate.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 12.10.2024.
//

import Foundation
import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

//@main
//struct YourApp: App {
//  // register app delegate for Firebase setup
//  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
//
//  var body: some Scene {
//    WindowGroup {
//      NavigationView {
//        ContentView()
//      }
//    }
//  }
//}
