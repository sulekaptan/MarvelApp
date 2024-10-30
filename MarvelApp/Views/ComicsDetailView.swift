//
//  ComicsDetailView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 12.10.2024.
//

import SwiftUI

struct ComicsDetailView: View {
    let comicsName: String
    let comicsDescription: String
    let comicsImage: String
    
    var body: some View {
        ZStack {
            Color(UIColor(named: "bgColor")!)
                .ignoresSafeArea()
            
            ScrollView {
                VStack {
                    AsyncImage(url: URL(string: comicsImage)) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 300)
                            .padding()
                    } placeholder: {
                        ProgressView()
                    }
                    
                    Text(comicsName)
                        .font(.custom("Copperplate", fixedSize: 30))
                        .bold()
                        .foregroundColor(.white)
                    
                    Text(comicsDescription)
                        .font(.custom("Copperplate", fixedSize: 22))
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                }
            }
        }
    }
}

struct ComicsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ComicsDetailView(comicsName: "IRON MAN", comicsDescription: "Tony Stark is Iron Man, a wealthy industrialist and genius inventor who builds a powered suit of armor to save his life and then uses the technology to protect the world.Tony Stark is Iron Man, a wealthy industrialist and genius inventor who builds a powered suit of armor to save his life and then uses the technology to protect the world.Tony Stark is Iron Man, a wealthy industrialist and genius inventor who builds a powered suit of armor to save his life and then uses the technology to protect the world.Tony Stark is Iron Man, a wealthy industrialist and genius inventor who builds a powered suit of armor to save his life and then uses the technology to protect the world.", comicsImage: "char")
    }
}
