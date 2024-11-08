//
//  SplashView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 14.10.2024.
//

import SwiftUI

struct SplashView: View {
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            Color(UIColor(named: "bgColor")!)
                .ignoresSafeArea()
        
            VStack {
                Spacer()
                
                Image("marvel")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 200)
                        .scaleEffect(isAnimating ? 1.5 : 1.0)
                        .onAppear() {
                            withAnimation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
                                self.isAnimating = true
                            }
                        }
                
                Spacer()
                
                Text("Powered by Şule Kaptan\n Version 1.0")
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding()
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
