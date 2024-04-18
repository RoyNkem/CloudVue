//
//  FilesView.swift
//  CloudVue
//
//  Created by Roy's MacBook M1 on 19/04/2024.
//

import SwiftUI


struct FilesView: View {
    var name: String
    var size: String
    var image: String
    var date: String
    var color: Color = .yellow
    
    var body: some View {
        HStack(spacing: 12) {
            
            Image(systemName: image)
                .foregroundStyle(color)
                .padding(6)
                .background(
                    RoundedRectangle(
                        cornerRadius: 4
                    )
                    .stroke(Color.gray.opacity(0.3))
                )
            
            VStack(alignment: .leading, spacing: 4) {
                
                Text(name)
                    .font(.system(size: 13))
                    .fontWeight(.bold)
                    .foregroundStyle(Color.black)
                
                Text(date)
                    .font(.caption)
                    .foregroundStyle(Color.gray)
            }
            
            Spacer(minLength: 10)
            
            Text(size)
                .font(.caption)
                .fontWeight(.bold)
        }
    }
}
