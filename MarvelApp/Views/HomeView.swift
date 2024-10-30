//
//  HomeView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 9.10.2024.
//

import SwiftUI

struct HomeView: View {

    var columns = [GridItem(.adaptive(minimum: 160), spacing: 10)]
    
    var body: some View {
        NavigationStack {
                ZStack {
                    Color(UIColor(named: "bgColor")!)
                        .ignoresSafeArea()
                    
                    ScrollView {
                        VStack{
                            LazyVGrid(columns: columns, spacing: 20) {
                                ForEach(0..<10) { index in
                                    NavigationLink(destination: CharactersView()) {
                                        MainCard(imageUrl: "https://assets-prd.ignimgs.com/2022/05/13/marvelheroes-1652464940086.jpg", title: "CHARACTERS", imageWidth: 150, imageHeight: 150, cardWidth: 150, cardHeight: 180, textSize: 18)
                                    }
                                }
                            }
                            .padding()
                        }
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        VStack {
                            Text("Marvel Cinematic Universe ⚡️")
                                .font(.custom("Copperplate", fixedSize:20))
                                .bold()
                                .foregroundColor(.black)
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            
                        } label: {
                            Image(systemName: "moon.fill")
                                .foregroundColor(Color.primary)
                        }
                    }
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
