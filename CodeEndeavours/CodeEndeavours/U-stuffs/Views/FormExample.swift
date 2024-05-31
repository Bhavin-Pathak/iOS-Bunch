//
//  FormExample.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 08/03/1946 Saka.
//

import SwiftUI

struct FormExample: View {
    var body: some View {
        //MARK: We Don't add 11 Elements inside form if we need to add then arrange with section or group
        NavigationView {
            Form {
                //MARK: Section Group of elements
                Section {
                    Text("Hello World !")
                    Text("Hello World !!")
                    Text("Hello World !!!")
                    Text("Hello World !!!!")
                    Text("Hello Duniya !!!!!")
                }
                //MARK: Group Of Elements
                Group {
                    Text("Hello World !!!!!!")
                    Text("Hello World !!!!!!!")
                    Text("Hello World !!!!!!!!")
                    Text("Hello World !!!!!!!!")
                    Text("Hello World !!!!!!!!!!")
                }
            }
            .navigationTitle("Form Example") //MARK: Navigation Titel inside AppBar
            .navigationBarTitleDisplayMode(.inline) //MARK: Titel Mode (.inline = Show on center of appbar  .large = shows in screen lagrge text .automatic = it's also worked line large)
        }
    }
}

struct FormExample_Previews: PreviewProvider {
    static var previews: some View {
        FormExample()
    }
}
