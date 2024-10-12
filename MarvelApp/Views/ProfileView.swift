//
//  ProfileView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 9.10.2024.
//

import SwiftUI

struct ProfileView: View {
 
    var body: some View {
        ZStack {
            Color(UIColor(named: "bgColor")!)
                .ignoresSafeArea()
            
            Text("PROFILE")
                .font(.custom("Copperplate", fixedSize: 30))
                .bold()
                .foregroundColor(.white)
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
