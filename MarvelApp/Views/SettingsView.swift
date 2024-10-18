//
//  ProfileView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 9.10.2024.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    @State private var showingAboutAppPopover = false
    @State private var showingFeedbackPopover = false
 
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
                                Image(systemName: "bubble.left.and.bubble.right.fill")
                                    .foregroundColor(.black)
                                
                                Text("Change language")
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
                            showingAboutAppPopover = true
                        }) {
                            HStack {
                                Image(systemName: "info.circle.fill")
                                    .foregroundColor(.black)
                                
                                Text("About App")
                                    .font(.custom("Copperplate", fixedSize: 18))
                                    .foregroundColor(.black)
                            }
                        }
                        .popover(isPresented: $showingAboutAppPopover) {
                            AboutAppPopoverViews()
                        }
                        .listRowBackground(Color.clear)
                        
                        Button(action: {
                            showingFeedbackPopover = true
                        }) {
                            HStack {
                                Image(systemName: "envelope.fill")
                                    .foregroundColor(.black)
                                
                                Text("Send feedback")
                                    .font(.custom("Copperplate", fixedSize: 18))
                                    .foregroundColor(.black)
                            }
                        }
                        .popover(isPresented: $showingFeedbackPopover) {
                            FeedbackPopoverView()
                        }
                        .listRowBackground(Color.clear)
                        
                        Button(action: {
                            alertMessage = "Are you sure you want to log out?"
                            showAlert = true
                        }) {
                            HStack {
                                Image(systemName: "arrow.backward.circle.fill")
                                    .foregroundColor(.black)
                                
                                Text("Log out")
                                    .font(.custom("Copperplate", fixedSize: 18))
                                    .foregroundColor(.black)
                            }
                        }
                        .alert(isPresented: $showAlert) {
                            Alert(title: Text("WARNING!"), message: Text(alertMessage), primaryButton: .destructive(Text("Log Out")) {
                                //
                            },
                            secondaryButton: .cancel(Text("Cancel")) {
                                //
                            })
                        }
                        .listRowBackground(Color.clear)
                        
                        Button(action: {
                            alertMessage = "Are you sure you want to delete your account?"
                            showAlert = true
                        }) {
                            HStack {
                                Image(systemName: "trash.fill")
                                    .foregroundColor(.black)
                                
                                Text("Delete account")
                                    .font(.custom("Copperplate", fixedSize: 18))
                                    .foregroundColor(.black)
                            }
                        }
                        .alert(isPresented: $showAlert) {
                            Alert(title: Text("WARNING!"), message: Text(alertMessage), primaryButton: .destructive(Text("Delete")) {
                                //
                            },
                            secondaryButton: .cancel(Text("Cancel")) {
                                //
                            })
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
