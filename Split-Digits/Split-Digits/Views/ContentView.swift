//
//  ContentView.swift
//  Split-Digits
//
//  Created by MacBookPro on 21/03/1946 Saka.
//

import SwiftUI

struct ContentView: View {

    let diditsarray = [6, 8, 3, 15, 15, 13, 9, 13, 3, 5, 7, 10, 12, 4,6,9,1,18,16,11,14, 14, 8, 2, 4, 5, 7, 18, 1, 17, 16, 12, 10, 11, 17, 2]

    private let fixedColumn = [

            GridItem(.fixed(25)),
            GridItem(.fixed(25)),
            GridItem(.fixed(25)),
            GridItem(.fixed(25)),
            GridItem(.fixed(25)),
            GridItem(.fixed(25))
        ]

    @State private var isSelected: Bool = false

    var body: some View {
        ScrollView(.vertical){
            LazyVGrid(columns: fixedColumn,spacing: 12) {
                ForEach(diditsarray, id: \.self) { item in
                    Text("\(item)")
                        .frame(width: 100, height: 100, alignment: .center)
                        .background(isSelected ? .green : .orange)
                        .cornerRadius(15)
                        .foregroundColor(.white)
                        .font(.title)
                }
            }

        }.padding([.leading, .trailing], 15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



