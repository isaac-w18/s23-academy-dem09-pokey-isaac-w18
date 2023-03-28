//
//  BackgroundColor.swift
//  Pokey
//
//  Created by AlecNipp on 11/16/22.
//

import SwiftUI

struct BackgroundColor: View {
    var body: some View {
        Color.yellow
            .opacity(0.2)
            .ignoresSafeArea()
    }
}

struct BackgroundColor_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundColor()
    }
}
