//
//  rewards.swift
//  CustomTabBar
//
//  Created by Weena Wibowo on 2024-04-07.
//

import SwiftUI
import CoreMotion

enum navitem {
    case movement
}

struct rewards: View {
    @State private var userPoints: Int = 50
    @State private var selectedTab: Tab = .house
    @State private var navigationPath = NavigationPath()
    var body: some View {
        NavigationStack(path: $navigationPath) {
            ZStack {
                Image("nologo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 393, height: 900)
                    .edgesIgnoringSafeArea(.all)
                
                Rectangle()
                    .fill(Color.white.opacity(0.5))
                    .frame(width: 393, height: 900)
                
                
                // UILabel converted into SwiftUI Text
                Text("Welcome username!")
                    .font(.custom("Lexend-Regular", size: 30))
                    .foregroundColor(.black)
                    .frame(width: 297, height: 51)
                    .position(x: 200, y: 200)
                
                RoundedRectangle(cornerRadius: 0)
                    .fill(Color.clear) // Assuming clear color
                    .frame(width: 409, height: 44)
                    .position(x: UIScreen.main.bounds.width / 2, y: 14)
                
                Circle()
                    .stroke(Color.white, lineWidth: 30)
                    .frame(width: 200, height: 200)
                
                Circle()
                    .trim(from: 0.0, to: CGFloat(min(Double(userPoints) / 100, 1.0)))
                    .stroke(style: StrokeStyle(lineWidth: 30, lineCap: .round, lineJoin: .round))
                    .foregroundColor(.orange)
                    .rotationEffect(Angle(degrees: -90))
                    .frame(width: 200, height: 200)
                
                
                VStack(alignment: .center, spacing: 50) { // Adjust spacing as needed
                    Text("\(userPoints) points until your next reward")
                        .font(.system(size: 24))
                        .padding(.top, 500) // Increase top padding to push content down
                    
                    Button(action: {
                        navigationPath.append(navitem.movement)
                    }) {
                        Text("Start today's workout")
                            .font(.system(size: 24))
                            .padding(.vertical, 20)
                            .padding(.horizontal, 40)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
            }.navigationDestination(for: navitem.self) { _ in
                movement()
            }
        }
    }
}

#Preview {
    rewards()
}
