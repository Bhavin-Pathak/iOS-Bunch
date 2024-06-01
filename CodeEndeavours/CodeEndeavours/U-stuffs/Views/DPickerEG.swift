//
//  DPickerEG.swift
//  CodeEndeavours
//
//  Created by MacBookPro on 11/03/1946 Saka.
//

import SwiftUI

struct DPickerEG: View {
    
    //MARK: Get Current Date Variable
    @State private var selectedDate = Date()
    
    var body: some View {
        //MARK: Datepicker Here We ...Date.now mean we only select current date to previous date date.now... mean we only select date form current date , displaycompoent mean if you want only date then shows only date hournminute mean time
        DatePicker("", selection: $selectedDate , in: Date.now..., displayedComponents: .hourAndMinute)
            .fixedSize(horizontal: false, vertical: true)
    }
}

struct DPickerEG_Previews: PreviewProvider {
    static var previews: some View {
        DPickerEG()
    }
}
