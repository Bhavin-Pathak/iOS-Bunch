//
//  ImagesEG.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 16/03/1946 Saka.
//

import SwiftUI

struct ImagesEG: View {
    var body: some View {
        //MARK: Imagewidget
        Image(systemName: "person")
            .resizable()
            .frame(width: 300,height: 300)
            .foregroundColor(.indigo)
    }
}

struct ImagesEG_Previews: PreviewProvider {
    static var previews: some View {
        ImagesEG()
    }
}
