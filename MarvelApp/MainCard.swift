//
//  MainCard.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 9.10.2024.
//

import SwiftUI

struct MainCard: View {
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 15.0) {
                Image("images")
                    .resizable()
                    .frame(width: 150, height: 150)
                
                Text("CHARACTERS")
                    .font(.custom("Copperplate", fixedSize: 18))
                    .bold()
                    .padding(.bottom, 16)
                    .padding(.horizontal, 8)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
            }
            .background(Color.white)
            .shadow(radius: 8)
            .cornerRadius(10)
        }
    }
}

struct MainCard_Previews: PreviewProvider {
    static var previews: some View {
        MainCard()
    }
}
