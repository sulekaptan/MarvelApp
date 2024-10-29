//
//  WaveInteractionCardView.swift
//  MarvelApp
//
//  Created by Şule Kaptan on 26.10.2024.
//

import Foundation
import SwiftUI

struct Waves: Shape {
    var waveHeight: CGFloat
    var phase: Angle
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: rect.maxY)) // Bottom Left
        
        for x in stride(from: 0, through: rect.width, by: 1) {
            let relativeX: CGFloat = x / 50 //wavelength
            let sine = CGFloat(sin(relativeX + CGFloat(phase.radians)))
            let y = waveHeight * sine //+ rect.midY
            path.addLine(to: CGPoint(x: x, y: y))
        }
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY)) // Top Right
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY)) // Bottom Right
        
        return path
    }
}


struct WaveInteractionCardView: View {
    @State private var backgroundColor: Color = Color(UIColor(named: "bgColor")!)
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(spacing: 0) {
                HStack {
//                    Text("ABOUT APP")
//                        .font(.custom("Copperplate", fixedSize: 22))
//                        .foregroundColor(.black)
//                    .padding()
                }

                GeometryReader { geo in
                    ZStack {
//                        backgroundColor
//                            .edgesIgnoringSafeArea(.all)
                        Waves(waveHeight: 30, phase: Angle(degrees: (Double(geo.frame(in: .global).minY) + 45) * -1 * 0.7))
                            .foregroundColor(.black)
                            .opacity(0.5)
                        Waves(waveHeight: 30, phase: Angle(degrees: Double(geo.frame(in: .global).minY) * 0.7))
                            .foregroundColor(backgroundColor)
                    }
                    ZStack {
//                        Color(UIColor(named: "bgColor")!)
//                            .ignoresSafeArea()
                        VStack {

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
                        
                    }.padding(.top, 50)
                    
                    
                }.frame(height: UIScreen.main.bounds.height, alignment: .center)
                // other views
            }
        }
    }
}

struct WaveInteractionCardView_Previews: PreviewProvider {
    static var previews: some View {
        WaveInteractionCardView()
    }
}
