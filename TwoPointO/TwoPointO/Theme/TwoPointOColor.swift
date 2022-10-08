//
//  TwoPointOColor.swift
//  TwoPointO
//
//  Created by Apostol, Alexandru on 8/10/22.
//

import SwiftUI

extension Color {
    enum TwoPointOColor {
        case primary100
        case primary50
        case red100
        case baseLight20
        case dark50
        case red50
        case dark25
        case dark75
        case backGrounOpaqueOveraly
    }
    
    init(hexString: String, opacity: CGFloat = 1.0) {
        var hexFormatted: String = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }
        
        assert(hexFormatted.count == 6, "Invalid hex code used.")
        
        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)
        
        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                  opacity: opacity)
    }
    
    static func theme(_ theme: TwoPointOColor) -> Color {
        switch theme {
        case .primary100:
            return Color(hexString: "#7F3DFF")
        case .primary50:
            return Color(hexString: "#EEE5FF")
        case .red100:
            return Color(hexString: "#FD3C4A")
        case .baseLight20:
            return Color(hexString: "#91919F")
        case .dark50:
            return Color(hexString: "#212325")
        case .red50:
            return Color(hexString: "#FFE2E4")
        case .dark25:
            return Color(hexString: "#292B2D")
        case .dark75:
            return Color(hexString: "#161719")
        case .backGrounOpaqueOveraly:
            return Color(hexString: "#0D1B25",opacity: 0.7)
        }
    }
}
