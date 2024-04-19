//
//  StorageView.swift
//  CloudVue
//
//  Created by Roy's MacBook M1 on 18/04/2024.
//

import SwiftUI


struct StorageView: View {
    
    var image: String
    var title: String
    var percentage: CGFloat
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            HStack {
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 45)
                
                Divider()
                    .frame(height: 45)
                    .padding(.horizontal)
                
                ZStack {
                    Circle()
                        .stroke(Color.accentColor.opacity(0.4), lineWidth: 8)
                    
                    Circle()
                        .trim(from: 0.0, to: percentage)
                        .stroke(
                            Color.accentColor,
                            style: StrokeStyle(lineWidth: 8, lineCap: .round, lineJoin: .round)
                        )
                        .rotationEffect(.init(degrees: -90))
                    
                    Text("\(Int(percentage * 100))%")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.black)
                    
                }
                .frame(width: 50, height:  50)
                
            }
            
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(Color.black)
                .padding(.top)
            
            Text("143 GB/ 150 GB")
                .font(.caption)
                .foregroundStyle(Color.gray)
                .padding(.top, 4)
            
        }
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
