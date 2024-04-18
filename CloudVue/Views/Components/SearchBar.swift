//
//  SearchBar.swift
//  CloudVue
//
//  Created by Roy's MacBook M1 on 18/04/2024.
//

import SwiftUI


struct SearchBar: View {
    @Binding var search: String
    
    var body: some View {
        HStack {
            
            TextField("Search", text: $search)
                .textFieldStyle(PlainTextFieldStyle())
            
            Button(action: {}) {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.white)
                    .padding(8)
                    .background(Color.accentColor)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
            }
        }
        .padding(.leading)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 4))
        .shadow(color: .black.opacity(0.05), radius: 5, x: 5, y: 5)
        .shadow(color: .black.opacity(0.05), radius: 5, x: -5, y: -5)
        .frame(maxWidth: 300)
        
    }
}
