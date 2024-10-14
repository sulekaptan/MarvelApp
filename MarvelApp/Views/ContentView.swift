//
//  ContentView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 4.10.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isActive = false
    
    var body: some View {
        
        if isActive{
            LoginView()
        }
        else {
            SplashView()
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
