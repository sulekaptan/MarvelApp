//
//  MainCard.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 9.10.2024.
//

import SwiftUI

struct MainCard: View {
    
    let imageUrl: String
    let title: String
    let imageWidth: CGFloat
    let imageHeight: CGFloat
    let cardWidth: CGFloat
    let cardHeight: CGFloat
    let textSize: CGFloat
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 15.0) {
                AsyncImage(url: URL(string: imageUrl)) { image in
                    image
                        .resizable()
                        .frame(width: imageWidth, height: imageHeight)
                } placeholder: {
                    ProgressView()
                }
//                Image(imageUrl)
//                    .resizable()
//                    .frame(width: imageWidth, height: imageHeight)
//
                Text(title)
                    .font(.custom("Copperplate", fixedSize: textSize))
                    .bold()
                    .padding(.bottom, 16)
                    .padding(.horizontal, 8)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .fixedSize(horizontal: false, vertical: true) 
            }
            .frame(width: cardWidth, height: cardHeight)
            .background(Color.white)
            .shadow(radius: 8)
            .cornerRadius(8)
        }
    }
}

struct MainCard_Previews: PreviewProvider {
    static var previews: some View {
        MainCard(imageUrl: "images", title: "CHARACTERS", imageWidth: 150, imageHeight: 150, cardWidth: 150, cardHeight: 180, textSize: 18)
    }
}
