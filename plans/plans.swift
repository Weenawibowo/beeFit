//
//  plans.swift
//  CustomTabBar
//
//  Created by Weena Wibowo on 2024-04-07.
//

import SwiftUI

struct plans: View {
    @State private var selectedTab: Tab = .doc
    var body: some View {
        ZStack {
            Image("nologo")
                .resizable()
                .scaledToFill()
                .frame(width: 393, height: 900)
                .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .fill(Color.white.opacity(0.5))
                .frame(width: 393, height: 900)
            
            VStack {
                Text("Beginner Plan")
                    .font(.title)
                    .padding(.top, 80)
                
                HStack {
                    Spacer()
                    Button("Beginner") {
                        // Action for Beginner button
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.orange)
                    .cornerRadius(8)
                    
                    Spacer()
                    Button("Intermediate") {
                        // Action for Intermediate button
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.yellow)
                    .cornerRadius(8)
                    .fontWidth(Font.Width.condensed)
                    
                    Spacer()
                    Button("Advanced") {
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
                        ForEach(0..<5) { index in
                            HStack {
                                Image("jogging")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50, height: 50)
                                    .padding(.trailing, 8)
                                
                                VStack(alignment: .leading) {
                                    Text("Workout Plan \(index + 1)")
                                        .font(.headline)
                                    Text("Description of Workout Plan \(index + 1)")
                                }
                                
                                Spacer()
                                
                                Text("50" + "\n points")
                                    .multilineTextAlignment(.center)
                            }
                            .padding()
                        }
                    }
                }
            
            }
            
        }
        
    }
}

#Preview {
    plans()
}

