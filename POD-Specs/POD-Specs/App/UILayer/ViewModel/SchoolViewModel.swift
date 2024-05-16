//
//  SchoolViewModel.swift
//  POD-Specs
//
//  Created by MacBookPro on 25/02/1946 Saka.
//

import Foundation


class SchoolViewModel{
    //MARK: Instance Of SchoolModel Class if Data Available Shows Data Else Shows Empty Array
    private (set) var schools: [School] = []
    //MARK: Networking Error
    private (set) var netError: DataError? = nil
    //MARK: Acess Logixs From APIBASE Class That Are Available Form SchoolDirectory-Protocol And className is classAPI() That is inharit Form SchoolDirectoryProtocall
    private let apiService: SchoolDirectory = classAPI()
    
    func getSchoolData() {
        apiService.getAllSchool { [weak self] result in
            switch result {
            case .success(let schools):
                //MARK: Self.school Is Perameter Name That Decalare Upper That Assign With Sucess let-
                self?.schools = schools ?? []
                print("Bhavin Here Is Your School Data \(schools?.count)")
            case .failure(let error):
                print("Bhavin You Get Error Here \(error.localizedDescription)")
                self?.netError = error
            }
        }
    }
}
