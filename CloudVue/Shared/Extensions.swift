//
//  Extensions.swift
//  CloudVue
//
//  Created by Roy's MacBook M1 on 18/04/2024.
//

import SwiftUI


// Getting screen size
// for both mac and ios...

extension View {
    
    func getRect() -> CGRect {
        
        #if os(macOS)
        return NSScreen.main!.visibleFrame
        #else
        return UIScreen.main.bounds
        #endif
    }
}
