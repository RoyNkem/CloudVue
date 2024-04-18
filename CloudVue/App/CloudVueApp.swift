//
//  CloudVueApp.swift
//  CloudVue
//
//  Created by Roy's MacBook M1 on 18/04/2024.
//

import SwiftUI

@main
struct CloudVueApp: App {
    
    var body: some Scene {
        
        #if os(macOS)
        WindowGroup {
            HomeView()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
        
        #else
        WindowGroup {
            HomeView()
        }
        #endif
    }
}

//Hiding Focus border color
#if os(macOS)
extension NSTextField {
    open override var focusRingType: NSFocusRingType {
        get{.none}
        set{}
    }
}
#endif
