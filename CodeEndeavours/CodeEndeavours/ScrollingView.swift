//
//  ScrollingView.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 07/03/1946 Saka.
//

import SwiftUI

struct ScrollingView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(1..<50){ index in
                    Text("\(index)")
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                        .background(.indigo)
                        .font(.largeTitle)
                        .cornerRadius(50)
                }
            }
        }
    }
}

struct ScrollingView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingView()
    }
}
