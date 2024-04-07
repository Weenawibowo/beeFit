//
//  login.swift
//  CustomTabBar
//
//  Created by Weena Wibowo on 2024-04-07.
//

import SwiftUI

struct login: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername: CGFloat = 0
    @State private var wrongPassword: CGFloat = 0
    @State private var isAuthenticated = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("nologo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 393, height: 900)
                    .clipped()
                    .border(Color.black, width: 1)
                
                Rectangle()
                    .fill(Color.white.opacity(0.5))
                    .frame(width: 393, height: 900)
                
                VStack {
                    Text("Login Details")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(Color.red, width: wrongUsername)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(Color.red, width: wrongPassword)
                    
                    Button("Login") {
                        authenticateUser(username: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.orange)
                    .cornerRadius(10)
                }
            }
            .navigationBarHidden(true)
        }

        .fullScreenCover(isPresented: $isAuthenticated) {
            Mainview() // Present the MainView when authenticated
        }
    }
    
    func authenticateUser(username: String, password: String) {
        // Dummy authentication logic
        if username.lowercased() == "youcode" && password == "abc123" {
            wrongUsername = 0
            wrongPassword = 0
            isAuthenticated = true // Trigger navigation
        } else {
            if username.lowercased() != "youcode" { wrongUsername = 2 }
            if password != "abc123" { wrongPassword = 2 }
            isAuthenticated = false
        }
    }
}



#Preview {
    login()
}
