//
//  AboutAppPopoverViews.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 18.10.2024.
//

import SwiftUI

struct AboutAppPopoverViews: View {
    @State private var showingAboutAppPopover = false
    
    var body: some View {
        ZStack {
            Color(UIColor(named: "bgColor")!)
                .ignoresSafeArea()

            VStack {
                Text("ABOUT APP")
                    .font(.custom("Copperplate", fixedSize: 22))
                    .foregroundColor(.black)
                .padding()
                
                Text("App Version: 1.0\n Developer: Şule Kaptan\n GitHub: github.com/sulekaptan\n")
                    .font(.custom("Copperplate", fixedSize: 18))
                    .foregroundColor(.black)
                .padding()
                
                Text("Contact: sulekaptan00@gmail.com")
                    .font(.custom("Copperplate", fixedSize: 18))
                    .foregroundColor(.black)
                .padding()
            }
        }
    }
}

struct AboutAppPopoverViews_Previews: PreviewProvider {
    static var previews: some View {
        AboutAppPopoverViews()
    }
}
