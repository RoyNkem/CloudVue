//
//  SideMenuView.swift
//  CloudVue
//
//  Created by Roy's MacBook M1 on 18/04/2024.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var currentTab: String
    @Namespace var animation
    
    var imageSize: Double = 50
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Files")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.black)
                    .kerning(1.5) //letters spacing
                
                Text("Go")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                    .kerning(1.5)
                    .padding(8)
                    .background(Color.accentColor)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding(10)
            
            Divider()
                .background(Color.gray.opacity(0.4))
            
            HStack(spacing: 12) {
                
                Image("pic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: imageSize, height: imageSize)
                    .clipShape(Circle())
                
                Text("Hi, Roy")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
            }
            
            tabButtonGroup
                .padding(.leading, 20)
                .offset(x: 15)
                .padding(.top, 20)
        }
        .frame(width: 210)
        .frame(maxHeight: .infinity, alignment: .top)
        .background(Color("AppGray").opacity(0.3).ignoresSafeArea())
    }
    
    //Tab buttons group
    private var tabButtonGroup: some View {
        VStack {
            TabButton(
                currentTab: $currentTab,
                image: "house.fill",
                title: "Home",
                animation: animation
            )
            
            TabButton(
                currentTab: $currentTab,
                image: "folder.fill.badge.person.crop",
                title: "Shared Files",
                animation: animation
            )
            
            TabButton(
                currentTab: $currentTab,
                image: "star",
                title: "Starred Files",
                animation: animation
            )
            
            TabButton(
                currentTab: $currentTab,
                image: "waveform.path.ecg.rectangle.fill",
                title: "Statistics",
                animation: animation
            )
            
            TabButton(
                currentTab: $currentTab,
                image: "gearshape",
                title: "Settings",
                animation: animation
            )
            
            TabButton(
                currentTab: $currentTab,
                image: "rectangle.righthalf.inset.fill.arrow.right",
                title: "Logout",
                animation: animation
            )
        }
    }
}

#Preview {
    SideMenuView(currentTab: .constant("Home"))
        .preferredColorScheme(.light)
}

