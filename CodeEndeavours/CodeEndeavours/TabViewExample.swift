//
//  TabView.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 07/03/1946 Saka.
//

import SwiftUI

struct TabViewExample: View {
    var body: some View {
        TabView {
            
            Text("Home")
                .badge(2)
                .tabItem {
                    Label("Received", systemImage: "tray.and.arrow.down.fill")
                }
            Text("Chats")
                .tabItem {
                    Label("Sent", systemImage: "tray.and.arrow.up.fill")
                }
            Text("Profile")
                .badge("!")
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle.fill")
                }
        }
    }
}

struct TabViewTabViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExample()
    }
}
