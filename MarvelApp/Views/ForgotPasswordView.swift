//
//  ForgotPasswordView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 9.10.2024.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @State private var email: String = ""
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        ZStack {
            Color(UIColor(named: "bgColor")!)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Image(systemName: "lock.rotation")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding(.top, 50)
                      
                Text("Reset password")
                    .font(.title)
                    .bold()
                    .fontDesign(.serif)
    
                TextField("E-mail", text: $email)
                    .padding()
                    .background(Color.white.opacity(1))
                    .cornerRadius(50)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .padding(.horizontal, 20)
                        
                Button (action: {
                    //şifre sıfırlama işlemi
                    if email.isEmpty {
                        alertMessage = "Email field cannot be empty!"
                        showAlert = true
                    } else {
                        //şifre sıfırlama bağlantısı gönderme kodu
                        alertMessage = "Password reset link has been sent."
                        showAlert = true
                    }
                }) {
                    Text("Send instructions")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(50)
                }
                .padding(.horizontal, 20)
                        
                Spacer()
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Alert"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
