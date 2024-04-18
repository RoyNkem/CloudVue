//
//  MainContent.swift
//  CloudVue
//
//  Created by Roy's MacBook M1 on 18/04/2024.
//

import SwiftUI

struct MainContent: View {
    @State var search: String = ""
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
            
            HStack {
                Text("Dashboard")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                
                Spacer(minLength: 0)
                
                SearchBar(search: $search)
                    .padding()
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack {
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        storageView
                    }
                    
                    HStack {
                        Text("Quick Access")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundStyle(Color.black)
                            .padding(.top)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        
                        Spacer()
                    }
                    
                    //Quick Access Buttons
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: 15) {
                            AccessButtons()
                        }
                    }
                }
                .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("AppGray").opacity(0.3))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(10)
            
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
    
    //Storage View Stack
    private var storageView: some View {
        HStack(spacing: 15) {
            StorageView(
                image: "dropbox",
                title: "DropBox",
                percentage: 0.6
            )
            
            StorageView(
                image: "drive",
                title: "Google Drive",
                percentage: 0.25
            )
            
            StorageView(
                image: "icloud",
                title: "iCloud",
                percentage: 0.9
            )
            
            StorageView(
                image: "dropbox",
                title: "DropBox",
                percentage: 0.6
            )
        }
    }
}

#Preview {
    MainContent()
}

