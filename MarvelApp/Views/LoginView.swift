//
//  LoginView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 5.10.2024.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    private var loginViewModel = LoginViewModel()
    
    @FocusState private var fieldIsFocused: Bool
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(UIColor(named: "bgColor")!)
                    .ignoresSafeArea()
                
                    VStack (spacing: 30) {
                        Image("marvel")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .padding(.top, 80)
                        
                        Text("Hey! Welcome back.")
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
                            
                            SecureField("Password", text: $password).focused($fieldIsFocused)
                                .padding()
                                .background(Color.white.opacity(1))
                                .cornerRadius(50)
                            
                            HStack {
                                Spacer()
                                
                                NavigationLink(destination: ForgotPasswordView()) {
                                    Text("Forgot password?")
                                        .font(.footnote)
                                        .foregroundColor(.black)
                                }
                                .padding(.horizontal, 30)
                            }
                        }
                        .padding(.horizontal, 20)
                        
                     
                        VStack(spacing: 15) {
                            Button(action: {
                                loginViewModel.login(email: email, password: password) { result in
                                    switch result {
                                    case .success(_):
                                        alertMessage = "Login successfull."
                                        showAlert = true
                                        appState.isUserLoggedIn = true
                                    case .failure(let failure):
                                        alertMessage = failure.localizedDescription
                                        showAlert = true
                                    }
                                }
                                fieldIsFocused = false
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
                                Alert(title: Text("ALERT"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
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
                            
                            NavigationLink(destination: SignUpView())
                                {
                                Text("Don't have an account? Sign up")
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
        .tint(.black)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
