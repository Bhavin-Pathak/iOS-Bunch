//
//  NavigateScreens.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 07/03/1946 Saka.
//

import SwiftUI

struct NavigateScreens: View {
    var body: some View {
        NavigationView{
            NavigationLink(destination: LoginScreen()) {
                Text("Navigate")
            }
        }
    }
}

struct NavigateScreens_Previews: PreviewProvider {
    static var previews: some View {
        NavigateScreens()
    }
}
