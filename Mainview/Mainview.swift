//
//  Mainview.swift
//  CustomTabBar
//
//  Created by Weena Wibowo on 2024-04-07.
//
import SwiftUI
struct Mainview: View {
    var body: some View {
        TabView {
            rewards()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            
            plans()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Plans")
                }
                .tag(1)
            
            offers()
                .tabItem {
                    Image(systemName: "gift")
                    Text("Rewards")
                }
                .tag(2)
        }
        .accentColor(.orange)
    }
}
#Preview {
    Mainview()
}

