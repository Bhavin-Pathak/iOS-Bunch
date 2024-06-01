//
//  BTNEG.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 10/03/1946 Saka.
//

import SwiftUI

struct BTNEG: View {
    
    var body: some View {
        VStack(spacing:30){
            Button("Destructive Role", role: .destructive, action: buttonAction)
                .buttonStyle(.bordered)
                .tint(.mint)
            Button("Button Plain", action: buttonAction)
                .buttonStyle(.plain)
                .tint(.blue)
            Button("Bordered Prominent", action: buttonAction)
                .buttonStyle(.borderedProminent)
                .tint(.red)
            Button("Bordered Button", action: buttonAction)
                .buttonStyle(.bordered)
                .tint(.primary)
            
            HStack(spacing: 30){
                
                Button {
                    print("")
                } label: {
                    Label("Edit", systemImage: "pencil")
                }
                
                Button {
                    print("")
                } label: {
                    Label("Users", systemImage: "person")
                }
               
            }
        }
    }
    
    func buttonAction(){
        //MARK: Outside of the Body
    }
}

struct BTNEG_Previews: PreviewProvider {
    static var previews: some View {
        BTNEG()
    }
}
