//
//  ContentView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 4.10.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSplash = true
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        
        if showSplash {
            SplashView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        withAnimation {
                            self.showSplash = false
                        }
                    }
                }
        } else {
            if appState.isUserLoggedIn {
                TabBarView()
            } else {
                LoginView()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
