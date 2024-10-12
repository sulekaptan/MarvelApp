//
//  SignUpView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 7.10.2024.
//

import SwiftUI

struct SignUpView: View {

    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        ZStack {
            Color(UIColor(named: "bgColor")!)
                .ignoresSafeArea()
            
                VStack (spacing: 30) {
                    Image("marvel")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .padding(.top, 80)
                    
                    Text("Hey! Join now.")
                        .font(.title)
                        .bold()
                        .fontDesign(.serif)
                
                    
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
                        
                        SecureField("Verify password", text: $confirmPassword)
                            .padding()
                            .background(Color.white.opacity(1))
                            .cornerRadius(50)
                    }
                    .padding(.horizontal, 20)
                    
                 
                    VStack(spacing: 15) {
                        Button(action: {
                            //Login
                        }) {
                            Text("Sign up")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(50)
                        }
                        .padding(.horizontal, 50)
                        .alert(isPresented: $showAlert) {
                            Alert(title: Text("ERROR"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
                        }
                            
                        Button(action: {
                            //Login
                        }) {
                            Text("Sign up with Google")
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
                        
                        NavigationLink(destination: LoginView()) {
                            Text("Already have an account? Login")
                                .font(.footnote)
                                .foregroundColor(.black)
                                .underline()
                        }
                        .padding(.horizontal, 30)
                        .padding(.bottom, 20)
                    }
                }
                .navigationBarBackButtonHidden(true)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
