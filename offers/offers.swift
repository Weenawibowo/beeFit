//
//  offers.swift
//  CustomTabBar
//
//  Created by Weena Wibowo on 2024-04-07.
//

import SwiftUI
struct offers: View {
    @State private var selectedTab: Tab = .bookmark
    var body: some View {
        ZStack {
            Image("offers")
                .resizable()
                .scaledToFill()
                .frame(width: 393, height: 900)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                
                Text("Rewards")
                    .font(.title)
                    .padding(.top, 80)
                
                HStack {
                    Spacer()
                    Button("Active") {
                        // Action for Beginner button
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.orange)
                    .cornerRadius(8)
                    
                    Spacer()
                    Button("Used") {
                        // Action for Intermediate button
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.yellow)
                    .cornerRadius(8)
                    
                    Spacer()
                    Button("Expired") {
                        // Action for Advanced button
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.yellow)
                    .cornerRadius(8)
                    Spacer()
                }
                .padding()
                
                ScrollView {
                    LazyVStack {
                        ForEach(0..<10) { index in
                            HStack {
                                Image("arcteryx")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50, height: 50)
                                    .padding(.trailing, 8)
                                
                                VStack(alignment: .leading) {
                                    Text("Reward \(index + 1)")
                                        .font(.headline)
                                        .bold()
                                    Text("Description of Reward \(index + 1)")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                                
                                Spacer()
                                
                                ZStack {
                                    Circle()
                                        .stroke(Color.gray, lineWidth: 5)
                                        .frame(width: 50, height: 50)
                                    
                                    Circle()
                                        .trim(from: 0.0, to: 0.7) // Assuming 70% progress
                                        .stroke(style: StrokeStyle(lineWidth: 5, lineCap: .round))
                                        .foregroundColor(.blue)
                                        .rotationEffect(Angle(degrees: -90))
                                        .frame(width: 50, height: 50)
                                    
                                    
                                }
                            }
                            .padding()
                        }
                    }
                }
                
                .frame(height: 520)
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    offers()
}
