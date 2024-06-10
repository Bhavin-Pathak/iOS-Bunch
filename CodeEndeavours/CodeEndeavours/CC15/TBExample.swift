//
//  TBExample.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 20/03/1946 Saka.
//

import SwiftUI

struct TBExample: View {
    
    @State private var selectedTab : Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab){
            StartingScreen()
                .tabItem {
                    Text("Start")
                    Image(systemName: "globe")
                }.tag(0)
            PWrappers()
                .tabItem {
                    Text("Property")
                    Image(systemName: "house")
                }.tag(1)
            LSTNavigation()
                .tabItem {
                    Text("List")
                    Image(systemName: "doc.text")
                }.tag(2)
        }
        .accentColor(.orange)
    }
}

struct TBExample_Previews: PreviewProvider {
    static var previews: some View {
        TBExample()
    }
}
