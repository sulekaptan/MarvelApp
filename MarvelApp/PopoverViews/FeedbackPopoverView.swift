//
//  FeedbackPopoverView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 18.10.2024.
//

import SwiftUI

struct FeedbackPopoverView: View {
    @State private var showingFeedbackPopover = false
    @State private var feedbackText = ""
    
    var body: some View {
        ZStack {
            Color(UIColor(named: "bgColor")!)
                .ignoresSafeArea()

                VStack {
                    Text("Send Feedback")
                        .font(.custom("Copperplate", fixedSize: 22))
                        .foregroundColor(.black)
                        .padding()
                                        
                    TextEditor(text: $feedbackText)
                        .frame(height: 150)
                        .padding()
//                                              .foregroundColor(.black)
//                                              .background(.white)
                        .cornerRadius(5)
                        .font(.custom("Copperplate", fixedSize: 18))
                                        
                    Button(action: {
                        //
                        showingFeedbackPopover = false
                    }) {
                        Text("Send")
                            .font(.custom("Copperplate", fixedSize: 18))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(5)
                    }
                    .padding()
                }
                .padding()
        }
    }
}

struct FeedbackPopoverView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackPopoverView()
    }
}
