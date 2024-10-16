//
//  ProfileView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 9.10.2024.
//

import SwiftUI

struct SettingsView: View {
 
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(named: "bgColor")!)
                    .ignoresSafeArea()
                
                VStack {
                    List {
                        Button(action: {
                            //
                        }) {
                            HStack {
                                Image(systemName: "paintbrush.fill")
                                    .foregroundColor(.black)
                                
                                Text("Change theme")
                                    .font(.custom("Copperplate", fixedSize: 18))
                                    .foregroundColor(.black)
                            }
                        }
                        .listRowBackground(Color.clear)
                        
                        Button(action: {
                            //
                        }) {
                            HStack {
                                Image(systemName: "bell.fill")
                                    .foregroundColor(.black)
                                
                                Text("Notifications")
                                    .font(.custom("Copperplate", fixedSize: 18))
                                    .foregroundColor(.black)
                            }
                        }
                        .listRowBackground(Color.clear)
                        
                        Button(action: {
                            //
                        }) {
                            HStack {
                                Image(systemName: "info.circle.fill")
                                    .foregroundColor(.black)
                                
                                Text("About App")
                                    .font(.custom("Copperplate", fixedSize: 18))
                                    .foregroundColor(.black)
                            }
                        }
                        .listRowBackground(Color.clear)
                        
                        Button(action: {
                            //
                        }) {
                            HStack {
                                Image(systemName: "envelope.fill")
                                    .foregroundColor(.black)
                                
                                Text("Send feedback")
                                    .font(.custom("Copperplate", fixedSize: 18))
                                    .foregroundColor(.black)
                            }
                        }
                        .listRowBackground(Color.clear)
                        
                        Button(action: {
                            //
                        }) {
                            HStack {
                                Image(systemName: "arrow.backward.circle.fill")
                                    .foregroundColor(.black)
                                
                                Text("Log out")
                                    .font(.custom("Copperplate", fixedSize: 18))
                                    .foregroundColor(.black)
                            }
                        }
                        .listRowBackground(Color.clear)
                        
                        Button(action: {
                            //
                        }) {
                            HStack {
                                Image(systemName: "trash.fill")
                                    .foregroundColor(.black)
                                
                                Text("Delete account")
                                    .font(.custom("Copperplate", fixedSize: 18))
                                    .foregroundColor(.black)
                            }
                        }
                        .listRowBackground(Color.clear)
                    }
                    .listStyle(.plain)
                    .background(Color.clear)
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("SETTINGS")
                            .font(.custom("Copperplate", fixedSize: 22))
                            .bold()
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
