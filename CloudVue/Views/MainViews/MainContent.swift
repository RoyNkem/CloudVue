//
//  MainContent.swift
//  CloudVue
//
//  Created by Roy's MacBook M1 on 18/04/2024.
//

import SwiftUI

struct MainContent: View {
    @State var search: String = ""
    let storageManager = StorageManager.shared
    
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
                    
                    subheader(text: "Quick Access")
                    
                    //Quick Access Buttons
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        accessButtonGroup
                            .padding(.top)
                    }
                    
                    subheader(text: "Recent Files")
                    
                    recentFiles()
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
    
    
    //MARK: - subheader(text:)
    
    @ViewBuilder
    private func subheader(text: String) -> some View {
        Text(text)
            .font(.title)
            .fontWeight(.bold)
            .foregroundStyle(Color.black)
            .padding(.top, 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
    }
    
    //MARK: - recentFiles()
    
    @ViewBuilder
    private func recentFiles() -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack {
                VStack {
                    
                    HStack {
                        Text("Name")
                            .font(.caption)
                            .foregroundStyle(Color.gray)
                        
                        Spacer(minLength: 0)
                        
                        Text("Size")
                            .font(.caption)
                            .foregroundStyle(Color.gray)
                    }
                    
                    Divider()
                        .padding(.bottom, 8)
                    
                    //FIles...
                    filesViewGroup
                }
                .padding()
                .frame(width: 250)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .shadow(color: .black.opacity(0.05), radius: 5, x: 5, y: 5)
            }
            .padding(.top)
        }
    }
    
    //MARK: - storageView
    
    private var storageView: some View {
        HStack(spacing: 15) {
            StorageView(
                image: "dropbox",
                title: "DropBox",
                storageType: storageManager.dropboxStorage
            )
            
            StorageView(
                image: "icloud",
                title: "iCloud",
                storageType: storageManager.icloudStorage
            )
            
            StorageView(
                image: "drive",
                title: "Google Drive",
                storageType: storageManager.googleDriveStorage
            )
            
            StorageView(
                image: "onedrive",
                title: "OneDrive",
                storageType: storageManager.oneDrive
            )
        }
    }
    
    
    //MARK: - accessButtonGroup
    
    private var accessButtonGroup: some View {
        HStack(spacing: 15) {
            AccessButtons(
                title: "Pictures",
                image: "photo",
                color: .yellow
            )
            
            AccessButtons(
                title: "Music",
                image: "music.note.house.fill",
                color: .blue
            )
            
            AccessButtons(
                title: "Videos",
                image: "play.rectangle.fill",
                color: .red
            )
            
            AccessButtons(
                title: "Apps",
                image: "square.grid.2x2.fill",
                color: .yellow
            )
            
            AccessButtons(
                title: "Documents",
                image: "doc.fill",
                color: .blue
            )
            
            AccessButtons(
                title: "Downloads",
                image: "arrow.down.app.fill",
                color: .pink
            )
        }
    }
    
    //MARK: - filesViewGroup
    
    private var filesViewGroup: some View {
        VStack(spacing: 12) {
            FilesView(
                name: "wedding.jpg",
                size: "11 MB",
                image: "photo",
                date: "16 April 2003"
            )
            
            FilesView(
                name: "Apple.mp4",
                size: "8 MB",
                image: "play.rectangle.fill",
                date: "06 March 2007",
                color: .red
            )
            
            FilesView(
                name: "WWDC.jpg",
                size: "6 MB",
                image: "photo",
                date: "11 June 2023"
            )
            
            FilesView(
                name: "SwiftUI 3.0.mp4",
                size: "32 MB",
                image: "play.rectangle.fill",
                date: "16 April 2003",
                color: .red
            )
            
            FilesView(
                name: "Learning_SwiftUI.pdf",
                size: "15 MB",
                image: "doc.fill",
                date: "16 August 2018",
                color: .blue
            )
        }
    }
}

