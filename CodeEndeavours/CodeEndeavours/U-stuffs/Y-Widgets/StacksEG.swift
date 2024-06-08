//
//  StacksEG.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 16/03/1946 Saka.
//

import SwiftUI

struct StacksEG: View {
    var body: some View {
        VStack(alignment: .leading , spacing: 30){
            
            Text("Hello World!")
                .foregroundStyle(.tint)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Hello, World!!")
                .foregroundStyle(.tint)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            HStack(spacing: 40) {
                
                Text("Left")
                    .foregroundStyle(.tint)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
                Text("Right")
                    .foregroundStyle(.tint)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            
            Image("Chore")
                .resizable()
                .clipShape(Circle())
        }
        .foregroundStyle(.teal)
        .font(.title)
        .fontWeight(.semibold)
    }
}

struct StacksEG_Previews: PreviewProvider {
    static var previews: some View {
        StacksEG()
    }
}
