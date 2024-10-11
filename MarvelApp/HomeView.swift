//
//  HomeView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 9.10.2024.
//

import SwiftUI

struct HomeView: View {
    @State private var backgroundColor: Color = Color(UIColor(named: "bgColor")!)

    var columns = [GridItem(.adaptive(minimum: 160), spacing: 10)]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    backgroundColor
                        .ignoresSafeArea()
//                        .edgesIgnoringSafeArea(.all)
                    
                    VStack{
                        Text("Welcome to Marvel Cinematic Universe ⚡️")
                            .font(.custom("Copperplate", fixedSize: 28))
                            .bold()
                            .padding()
                        
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(0..<10) { index in
                                MainCard()
                            }
                        }
                        .padding()
                    }
                }
                .preferredColorScheme(.dark)
                .statusBarHidden()
            }
        }
        .navigationTitle("Home")
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
