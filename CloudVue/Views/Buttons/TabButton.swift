//
//  TabButton.swift
//  CloudVue
//
//  Created by Roy's MacBook M1 on 18/04/2024.
//

import SwiftUI

struct TabButton: View {
    @Binding var currentTab: String
    
    var image: String
    var title: String
    var animation: Namespace.ID
    
    
    var body: some View {
        
        Button(action: {
            withAnimation {
                currentTab = title
            }
            
        }) {
            
            HStack(spacing: 15) {
                Image(systemName: image)
                    .font(.title2)
                    .foregroundStyle(currentTab == title ? Color.accentColor : Color.gray.opacity((0.8)))
                
                Text(title)
                    .foregroundStyle(Color.black.opacity(0.8))
                    .kerning(1.2)
            }
            .padding(.vertical, 12)
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                
                ZStack {
                    
                    if currentTab == title {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.white)
                            .matchedGeometryEffect(id: "TAB", in: animation)
                        
                    } else {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.clear)
                    }
                }
            )
            .contentShape(Rectangle())
        }
    }
}
