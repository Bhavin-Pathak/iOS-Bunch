//
//  LGColors.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 10/03/1946 Saka.
//

import SwiftUI

struct LGColors: View {
    var body: some View {
        LinearGradient(colors: [.indigo, .white], startPoint: .leading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

struct LGColors_Previews: PreviewProvider {
    static var previews: some View {
        LGColors()
    }
}
