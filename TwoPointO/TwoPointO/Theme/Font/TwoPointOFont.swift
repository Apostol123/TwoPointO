//
//  RegisterACOFont.swift
//  RegisterACO
//
//  Created by Alex Apostol on 15/4/22.
//

import UIKit
import SwiftUI

enum TwoPointOFonts {
    case bold10
    case bold12
    case bold14
    case bold16
    case bold18
    
    case light10
    case light12
    case light14
    case light16
    case light18
    
    case medium10
    case medium12
    case medium14
    case medium16
    case medium18
    
    case regular10
    case regular12
    case regular14
    case regular16
    case regular18
    
    
    case semiBold10
    case semiBold12
    case semiBold14
    case semiBold16
    case semiBold18
    case semiBold24
}


extension Font {
    
    static func theme(id: TwoPointOFonts) -> Font {
        switch id {
        case .bold10:
            return Font.custom("Inter-Bold", size: 10.0)
        case .bold12:
            return Font.custom( "Inter-Bold", size: 12)
        case .bold14:
            return Font.custom( "Inter-Bold", size: 14)
        case .bold16:
            return Font.custom( "Inter-Bold", size: 16)
        case .bold18:
            return Font.custom("Inter-Bold", size: 18)
        case .light10:
            return Font.custom("Inter-Light", size: 10)
        case .light12:
            return Font.custom( "Inter-Light", size: 12)
        case .light14:
            return Font.custom("Inter-Light", size: 14)
        case .light16:
            return Font.custom( "Inter-Light", size: 16)
        case .light18:
            return Font.custom( "Inter-Light", size: 18)
        case .medium10:
            return Font.custom( "Inter-Medium", size: 10)
        case .medium12:
            return  Font.custom( "Inter-Medium", size: 12)
        case .medium14:
            return  Font.custom( "Inter-Medium", size: 14)
        case .medium16:
            return Font.custom( "Inter-Medium", size: 16)
        case .medium18:
            return Font.custom( "Inter-Medium", size: 18)
        case .regular10:
            return Font.custom( "Inter-Regular", size: 10)
        case .regular12:
            return  Font.custom("Inter-Regular", size: 12)
        case .regular14:
            return  Font.custom("Inter-Regular", size: 14)
        case .regular16:
            return  Font.custom( "Inter-Regular", size: 16)
        case .regular18:
            return  Font.custom( "Inter-Regular", size: 18)
        case .semiBold10:
            return Font.custom( "Inter-SemiBold", size: 10)
        case .semiBold12:
            return  Font.custom( "Inter-SemiBold", size: 12)
        case .semiBold14:
            return  Font.custom("Inter-SemiBold", size: 14)
        case .semiBold16:
            return Font.custom( "Inter-SemiBold", size: 16)
        case .semiBold18:
            return Font.custom("Inter-SemiBold", size: 18)
        case .semiBold24:
            return Font.custom( "Inter-SemiBold", size: 24)
        }
    }
}
