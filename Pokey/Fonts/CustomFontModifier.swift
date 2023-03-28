//
//  CustomFontModifier.swift
//  Pokey
//
//  Created by AlecNipp on 11/17/22.
//

import Foundation
import SwiftUI

struct PokeyFont: ViewModifier {
    var size: CGFloat
    var dynamicSize: Font.TextStyle
    
    func body(content: Content) -> some View {
        content
            .font(.custom("PKMN-RBYGSC", size: size, relativeTo: dynamicSize))
    }
}

extension View {
    func pokeyFont(size: CGFloat, dynamicSize: Font.TextStyle) -> some View {
            modifier(PokeyFont(size: size, dynamicSize: dynamicSize))
        }
}
