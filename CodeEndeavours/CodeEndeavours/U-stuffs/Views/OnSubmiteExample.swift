//
//  OnSubmiteExample.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 11/03/1946 Saka.
//

import SwiftUI

struct OnSubmiteExample: View {
    
    @State private var addText = ""
    @State private var newText = ""
    
    var body: some View {
        NavigationView {
            
            Form() {
                TextField("Enter Word", text: $addText)
                    .autocorrectionDisabled(true)
                
                
                Section("Your Name"){
                    Text("Here is your new \(addText)")
                }
            }
        
        }
    }
}

struct OnSubmiteExample_Previews: PreviewProvider {
    static var previews: some View {
        OnSubmiteExample()
    }
}
