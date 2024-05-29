//
//  ButtonExample.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 07/03/1946 Saka.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        Button {
            //MARK: Button Action Here When User Tap On Button
            print("Hello World!!")
        } label: {
            //MARK: We Can Add Text Or Image For Showing on Button
            Text("Click Here")
                .bold()
                .foregroundColor(.white)
        }
        //MARK: Here We Can Modify Button Style After Lable {}
        .frame(width: 150, height: 30)
        .padding(.all)
        .background(.indigo)
        .cornerRadius(15)
    }
}

struct ButtonExample_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExample()
    }
}
