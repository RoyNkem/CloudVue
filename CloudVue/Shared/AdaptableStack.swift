//
//  AdaptableStack.swift
//  CloudVue
//
//  Created by Roy's MacBook M1 on 19/04/2024.
//

import SwiftUI

struct AdaptableStack<Content: View, MenuView: View, SideView: View>: View {
    
    var content: HomeView
    var menuView: MenuView
    var sideView: SideView
    
    //For slide menu ios
    @Binding var showMenu: Bool
    
    init(
        showMenu: Binding<Bool>,
        @ViewBuilder content: @escaping ()-> HomeView,
        @ViewBuilder menuView: @escaping ()-> MenuView,
        @ViewBuilder sideView: @escaping ()-> SideView
    ) {
        self._showMenu = showMenu
        self.content = content()
        self.menuView = menuView()
        self.sideView = sideView()
    }
    
    var body: some View {
        
        ZStack {
            
            //Checking for iOS or macOS...
            #if os(iOS)
            
            #else
            
            #endif
        }
    }
}
