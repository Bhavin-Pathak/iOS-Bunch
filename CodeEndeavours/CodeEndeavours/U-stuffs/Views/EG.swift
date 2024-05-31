//
//  EG.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 10/03/1946 Saka.
//

import SwiftUI

struct EG: View {
    
    let genders = ["Male","Female","Transgender","Other"]
    @State private var selectedGender = ""
    var body: some View {
        NavigationView{
            Form {
                Picker("Select Gender", selection: $selectedGender){
                    ForEach(genders, id: \.self){
                        Text($0)
                    }
                }
                .pickerStyle(.navigationLink)
                .foregroundColor(.indigo)
            }
            .navigationTitle("Split Money")
            //MARK: Button On Navigation Toolbar
            .toolbar{
                //MARK: Toolbar item Group
                ToolbarItemGroup(placement: .keyboard){
                    Button("Save"){
                        
                    }
                }
            }
        }
    }
}

struct EG_Previews: PreviewProvider {
    static var previews: some View {
        EG()
    }
}
