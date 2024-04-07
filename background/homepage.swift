//
//  homepage.swift
//  CustomTabBar
//
//  Created by Weena Wibowo on 2024-04-07.
//

import SwiftUI

enum navigationItem {
    case login
    case signpage
}

struct homepage: View {
    @State private var navigationPath = NavigationPath()

    var body: some View {
        NavigationStack(path: $navigationPath) {
            ZStack {
                Image("beeFitMountain")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Spacer(minLength: 50)
                    
                    Image("appstore")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                    
                    // Log In button
                    Button("Log In") {
                        navigationPath.append(navigationItem.login)
                    }
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.yellow)
                    .cornerRadius(25)
                    .padding(.top, 200)
                    
                    // Sign Up button
                    Button("Sign Up") {
                        navigationPath.append(navigationItem.signpage)
                    }
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.yellow)
                    .cornerRadius(25)
                    .padding(.top, 10)

                    Spacer()
                }
            }
            // Define navigation destinations based on the NavigationItem
            .navigationDestination(for: navigationItem.self) { item in
                switch item {
                case .login:
                    login() // Ensure you have a LoginView struct defined that represents the login page
                case .signpage:
                    signpage() // Ensure you have a SignPage struct defined that represents the sign-up page
                }
            }
        }
    }
}




#Preview {
    homepage()
}
