//
//  LSTNavigation.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 20/03/1946 Saka.
//

import SwiftUI

struct LSTNavigation: View {
    
    
    @State private var arraysofData = [UserData(name: "Bhavin", age: 12),
                                       UserData(name: "Akshay", age: 24),
                                       UserData(name: "Mansi", age: 36),
                                       UserData(name: "Mayur", age: 48),
                                       UserData(name: "Himansu", age: 60),
                                       UserData(name: "Hiren", age: 72),
                                       UserData(name: "Faizal", age: 96),
                                       UserData(name: "Pankaj", age: 108),
                                       UserData(name: "Deelip", age: 120)
                                       ]
    
    var body: some View {
        NavigationView{
            List(){
                ForEach(arraysofData, id: \.age) { data in
                    HStack{
                        Text(data.name)
                        Spacer()
                        Text(data.name)
                    }
                }
                .onDelete(perform: deleteUser)
            }
            .navigationTitle("List Example")
        }
    }
    func deleteUser(offset: IndexSet){
        arraysofData.remove(atOffsets: offset)
    }
}

struct LSTNavigation_Previews: PreviewProvider {
    static var previews: some View {
        LSTNavigation()
    }
}


struct UserData {
    var name: String
    var age: Int
}
