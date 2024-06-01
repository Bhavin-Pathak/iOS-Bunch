//
//  Alerts.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 11/03/1946 Saka.
//

import SwiftUI

struct Alerts: View {
    
    @State private var isShowingAleart = false
    
    var body: some View {
        VStack {
            
            Button {
                isShowingAleart.toggle()
            } label: {
                Label("Show Alert", systemImage: "square.and.arrow.up.trianglebadge.exclamationmark")
            }

        }
        .alert("This is Error Titel", isPresented: $isShowingAleart) {
            Button("Delete",role: .destructive){
                
            }
            Button("Cancel", role: .cancel){
                
            }
        } message: {
            Text("Message Body Inside The Alert Box")
        }
    }
}

struct Alerts_Previews: PreviewProvider {
    static var previews: some View {
        Alerts()
    }
}
