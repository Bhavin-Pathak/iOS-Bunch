//
//  CModifiers.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 11/03/1946 Saka.
//

import SwiftUI

struct CModifiers: View {
    
    @State private var isChangeButton = false
    
    var body: some View {
        Button {
            isChangeButton.toggle()
        } label: {
            Text("Press To Chnage Button Colors")
        }
        .foregroundColor(isChangeButton ? .blue : .pink)
        .frame(width: 200, height: 200)
    }
}

struct CModifiers_Previews: PreviewProvider {
    static var previews: some View {
        CModifiers()
    }
}
