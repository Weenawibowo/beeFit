//
//  CustomTabBar.swift
//  CustomTabBar
//
//  Created by Weena Wibowo on 2024-04-07.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case doc
    case bookmark
    case gearshape
}

struct CustomTabBar: View {
    @Binding var selectedTab: Tab
    
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.self) { tab in // Use \.self for simpler identification
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                        .resizable() // Make sure images can resize
                        .aspectRatio(contentMode: .fit) // Preserve aspect ratio
                        .frame(width: 24, height: 24) // Adjust size as needed
                        .foregroundColor(selectedTab == tab ? .orange : .gray)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(height: 60) // Removed width: nil for proper SwiftUI syntax
            .background(.thinMaterial)
            .cornerRadius(10)
            .padding()
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.house))
    }
}

