//
//  movement.swift
//  CustomTabBar
//
//  Created by Weena Wibowo on 2024-04-07.
//

import SwiftUI
import CoreMotion

struct movement: View {
    @State private var userPoints: Int = 50 // Placeholder for user points
    private let activityManager = CMMotionActivityManager()

    var body: some View {
        NavigationView {
            ZStack {
                Image("movement")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 393, height: 900)
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Spacer()
                    Text("Workout in progress, great job!")
                        .font(.custom("Lexend-Regular", size: 25))
                        .padding()
                        .background(Color.clear)
                    Spacer()
                    Text("\(userPoints) points earned so far")
                        .font(.body)
                        .padding()
                        .background(Color.yellow)
                    Spacer()
                }
            }
            .frame(height: 650)
            .padding(.horizontal)
        }
        .onAppear {
            self.startWorkOutMonitoring()
        }
    }

    func startWorkOutMonitoring() {
//        print("hello")
//        guard CMMotionActivityManager.isActivityAvailable() else { return }
//        print("test")
        activityManager.startActivityUpdates(to: OperationQueue.main) { (activity: CMMotionActivity?) in
            guard let activity = activity else { return }
            DispatchQueue.main.async {
                if activity.stationary {
                    print("Stationary")
                } else if activity.walking {
                    print("Walking")
                } else if activity.running {
                    print("Running")
                } else if activity.automotive {
                    print("Automotive")
                }
            }
        }
    }
}

#Preview {
    movement()
}


