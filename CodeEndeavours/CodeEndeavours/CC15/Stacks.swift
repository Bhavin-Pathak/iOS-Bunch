//
//  Stacks.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 20/03/1946 Saka.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        VStack(spacing: 20){ //MARK: In this we can align items adding spacing on vstack
            //MARK: VStack Stand for vertical in this all children align in vertical - - - - - - - - - - - - - - <-- EG
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("Hello, World!!")
            Text("Hello, World!!!")
            HStack(spacing: 20){ //MARK: In this we can align items adding spacing on HStack
                //MARK: HStack Stand For Horizental Stack in thi all children align in horizental |||||||||||| <- EG
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!!!")
            }.padding()
        }.padding()
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
