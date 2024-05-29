//
//  LoginScreen.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 07/03/1946 Saka.
//

import SwiftUI

struct LoginScreen: View {
    @State var userName = ""
    @State var password = ""
    var body: some View {
        //MARK: Zstack is used When Need TO Placce Any Items on image or texts etc
        ZStack{
            Color.orange
                .ignoresSafeArea(.all)
            //MARK: Vstack Mean All Elements Align In Verticle Alignment in Center Spacing Between Elements is 20 Inside VStack We Can Arrange Our Elements Or Widgets Like: Image Text Button TFields ETC........
            VStack(alignment: .center, spacing: 20){
                Text("Login Form")
                    .bold()
                    .foregroundColor(.indigo)
                    .textCase(.uppercase)
                
                TextField("Username", text: $userName)
                    .textFieldStyle(.roundedBorder)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                
                Button(action: {
                    print("Hello World")
                }, label: {
                    Text("Login")
                })
                .frame(width: 120, height: 15)
                .padding(.all)
                .background(.indigo)
                .foregroundColor(.white)
                .cornerRadius(15)
            }
            .padding(.all)
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
