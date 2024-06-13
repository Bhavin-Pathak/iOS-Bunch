//
//  ContentView.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 02/03/1946 Saka.
//

import SwiftUI

struct StartingScreen: View {
    var body: some View {
      Image(systemName: "power.circle")
            .resizable()
            .frame(width: 50,height: 50)
            .foregroundColor(.indigo)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartingScreen()
    }
}
