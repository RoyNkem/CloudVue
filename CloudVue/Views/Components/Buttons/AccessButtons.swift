//
//  AccessButtons.swift
//  CloudVue
//
//  Created by Roy's MacBook M1 on 18/04/2024.
//

import SwiftUI

struct AccessButtons: View {
    var title: String
    var image: String
    var color: Color
    
    var body: some View {
        Button(action: {}) {
            
            VStack(spacing: 12) {
                
                Image(systemName: image)
                    .font(.title)
                    .foregroundStyle(color)
                //Square shape background
                    .frame(width: 50, height: 50)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 5, y: 5)
                
                Text(title)
                    .font(.caption)
                    .fontWeight(.bold)
                    .kerning(1.3)
                    .foregroundStyle(Color.black)
            }
            .frame(width: 80)
        }
    }
}
