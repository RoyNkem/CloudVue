//
//  HomeView.swift
//  CloudVue
//
//  Created by Roy's MacBook M1 on 18/04/2024.
//

import SwiftUI

struct HomeView: View {
    @State var currentTab: String = "Home"
    
    var body: some View {
        
        HStack {
            SideMenuView(currentTab: $currentTab)
            
            MainContent()
            
            SideView()
        }
        .frame(
            width: getRect().width/1.3,
            height: getRect().height - 100,
            alignment: .leading
        )
        .background(Color.white.ignoresSafeArea())
        .buttonStyle(PlainButtonStyle())
        .preferredColorScheme(.light)
    }
}

#Preview {
    HomeView()
}
