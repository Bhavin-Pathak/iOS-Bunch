//
//  LST.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 11/03/1946 Saka.
//

import SwiftUI

struct LST: View {
    
    //MARK: Default Search Variable
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List{
                ForEach(0..<20){ data in
                    Text("\(data)")
                }
                
                Section("Section"){
                    Text("Hello, World!")
                    Text("Hello, World!!")
                    Text("Hello, World!!!")
                }
            }
            .navigationTitle("List Example")
            //MARK: Search Box
            .searchable(text: $searchText, placement: .toolbar, prompt: "Search From List") {
                //MARK: Search Suggestion
                Text("Hello, World!")
                Text("Hello, World!!")
                Text("Hello, World!!!")
            }
        }
    }
}

struct LST_Previews: PreviewProvider {
    static var previews: some View {
        LST()
    }
}
