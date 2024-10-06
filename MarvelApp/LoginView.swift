//
//  LoginView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 5.10.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var backgroundColor: Color = Color(UIColor(named: "bgColor")!)
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showAlert = false
    @State private var alertMessage = ""

    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
                VStack (spacing: 30) {
                    Image("marvel")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .padding(.top, 80)
                
                    
                    VStack(spacing: 15) {
                        TextField("E-mail", text: $email)
                            .padding()
                            .background(Color.white.opacity(1))
                            .cornerRadius(50)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                        
                        SecureField("Password", text: $password)
                            .padding()
                            .background(Color.white.opacity(1))
                            .cornerRadius(50)
                    }
                    .padding(.horizontal, 20)
                    
                 
                    VStack(spacing: 15) {
                        Button(action: {
                            //Login
                        }) {
                            Text("Login")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(50)
                        }
                        .padding(.horizontal, 50)
                        .alert(isPresented: $showAlert) {
                            Alert(title: Text("Hata"), message: Text(alertMessage), dismissButton: .default(Text("Tamam")))
                        }
                            
                        Button(action: {
                            //Login
                        }) {
                            Text("Login with Google")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(50)
                        }
                        .padding(.horizontal, 50)
                    }
                    .padding(.horizontal, 20)
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            // Kayıt ekranına yönlendirme
                        }) {
                            Text("Don't have an account? Sign up")
                                .font(.footnote)
                                .foregroundColor(.black)
                                .underline() // Altı çizili
                        }
                        .padding(.horizontal, 30)
                        .padding(.bottom, 20)
                    }
                }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
