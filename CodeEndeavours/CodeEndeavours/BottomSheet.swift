//
//  BottomSheet.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 07/03/1946 Saka.
//

import SwiftUI

struct BottomSheet: View {
    
    @State var isOpenBottomSeet = false
    
    var body: some View {
        Button("Click Here To Open Bottom Sheet"){
            isOpenBottomSeet.toggle()
        }
        .sheet(isPresented: $isOpenBottomSeet) {
            Text("Bottom Sheet Apear")
        }
    }
}

struct BottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheet()
    }
}
