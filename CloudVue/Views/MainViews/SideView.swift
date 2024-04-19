//
//  SideView.swift
//  CloudVue
//
//  Created by Roy's MacBook M1 on 19/04/2024.
//

import SwiftUI

struct SideView: View {
    var body: some View {
        
        VStack {
            Text("Storage")
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            //Storage space
            VStack {
                
                ZStack {
                    Circle()
                        .stroke(Color.gray.opacity(0.3), lineWidth: 25)
                    
                    Circle()
                        .trim(from: 0, to: 0.7)
                        .stroke(
                            Color.accentColor,
                            style: StrokeStyle(
                                lineWidth: 25,
                                lineCap: .round,
                                lineJoin: .round
                            )
                        )
                        .rotationEffect(.init(degrees: -90))
                    
                    VStack {
                        Text("70%")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.black)
                        
                        Text("Used")
                            .fontWeight(.bold)
                            .foregroundStyle(Color.black)
                    }
                }
                .frame(width: 130, height: 170)
                
                HStack(spacing: 15) {
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Total Space")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.gray)
                        
                        Text("256 GB")
                            .font(.caption)
                            .fontWeight(.bold)
                    }
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Used Space")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.gray)
                        
                        Text("130 GB")
                            .font(.caption)
                            .fontWeight(.bold)
                    }
                }
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 25)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .shadow(color: .black.opacity(0.05), radius: 5, x: 5, y: 5)
            
        }
        .foregroundStyle(Color.black)
        .frame(width: 220)
        .frame(maxHeight: .infinity, alignment: .top)
        .background(Color("AppGray").opacity(0.3).ignoresSafeArea())
    }
}
