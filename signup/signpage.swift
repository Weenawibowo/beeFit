//
//  signpage.swift
//  CustomTabBar
//
//  Created by Weena Wibowo on 2024-04-07.
//
import SwiftUI

struct signpage: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var username: String = ""
    @State private var phoneNumber: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
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
            
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Welcome to beeFit!")
                        .font(.custom("Lexend-Medium", size: 25))
                        .foregroundColor(.black)
                        .lineSpacing(16)
                        .padding(.leading, 10)
                        .padding(.top, 100) 
                    
                    Text("let's create an account!")
                        .font(.system(size: 20))
                        .padding(.leading, 10)
                    
                    Group {
                        CustomTextField(placeHolder: "First Name", text: $firstName)
                        CustomTextField(placeHolder: "Last Name", text: $lastName)
                        CustomTextField(placeHolder: "Email", text: $email)
                        CustomTextField(placeHolder: "Username", text: $username)
                        CustomTextField(placeHolder: "Phone Number", text: $phoneNumber)
                        CustomSecureField(placeHolder: "Password", text: $password)
                        CustomSecureField(placeHolder: "Confirm Password", text: $confirmPassword)
                    }
                    .padding(.horizontal, 10)
                    
                    Button("Create Account") {
                        // Handle create account action
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(8)
                    .padding(.horizontal, 10)
                }
            }
        }
    }
}

struct CustomTextField: View {
    var placeHolder: String
    @Binding var text: String
    
    var body: some View {
        TextField(placeHolder, text: $text)
            .padding()
            .background(Color(red: 0.978, green: 0.966, blue: 0.966, opacity: 0.8))
            .cornerRadius(5)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color(red: 0.533, green: 0.494, blue: 0.494), lineWidth: 1)
            )
    }
}
struct CustomSecureField: View {
    var placeHolder: String
    @Binding var text: String
    
    var body: some View {
        SecureField(placeHolder, text: $text)
            .padding()
            .background(Color(red: 0.978, green: 0.966, blue: 0.966, opacity: 0.8))
            .cornerRadius(5)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color(red: 0.533, green: 0.494, blue: 0.494), lineWidth: 1)
            )
    }
}


#Preview {
    signpage()
}
