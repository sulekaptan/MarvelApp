//
//  ProfileView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 9.10.2024.
//

import SwiftUI

struct SettingsView: View {
 
    var body: some View {
        ZStack {
            Color(UIColor(named: "bgColor")!)
                .ignoresSafeArea()
            
            Text("SETTINGS")
                .font(.custom("Copperplate", fixedSize: 30))
                .bold()
                .foregroundColor(.white)
            
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
