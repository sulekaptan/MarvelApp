//
//  FavoritesView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 9.10.2024.
//

import SwiftUI

struct FavoritesView: View {
   
    var body: some View {
        ZStack {
            Color(UIColor(named: "bgColor")!)
                .ignoresSafeArea()
            
            Text("FAVORITES")
                .font(.custom("Copperplate", fixedSize: 30))
                .bold()
                .foregroundColor(.white)
        }
    }
}
struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
