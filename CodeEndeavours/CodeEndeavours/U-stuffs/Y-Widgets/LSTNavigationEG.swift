//
//  LSTNavigationEG.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 16/03/1946 Saka.
//

import SwiftUI

struct LSTNavigationEG: View {
    
    let ary = ["Bhavin","Mansi","Mayur","Himanshu"]
    
    
    var body: some View {
        NavigationStack {
            List(ary, id: \.self) { item in
                HStack {
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 40,height: 40)
                        .cornerRadius(30)
                    .foregroundStyle(.indigo)
                    VStack{
                        Text("Name \(item)")
                        Text("Name \(item)")
                    }
                }
            }
            .navigationTitle("List")
        }
        .frame(height: nil)
    }
}

struct LSTNavigationEG_Previews: PreviewProvider {
    static var previews: some View {
        LSTNavigationEG()
    }
}
