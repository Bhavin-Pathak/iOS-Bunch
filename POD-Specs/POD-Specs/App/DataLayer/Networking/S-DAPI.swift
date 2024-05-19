//
//  S-DAPI.swift
//  POD-Specs
//
//  Created by MacBookPro on 25/02/1946 Saka.
//

import Foundation
import Alamofire

//MARK: Asign Publicaly Callback On Typalias That Direce Acess Via @escaping() Method With Typealias Var Name
typealias sucessSchoolListAPIResponse = (Swift.Result<[School]?, DataError>) -> Void

protocol SchoolDirectory{
    func getAllSchool(compilition: @escaping ((Swift.Result<[School]?, DataError>) -> Void))
}

class classAPI: SchoolDirectory{
    
    //MARK: GetAllSchool Data Nested Function
    func getAllSchool(compilition : @escaping(sucessSchoolListAPIResponse) ) {
        //TODO: Alamofire Request
        AF.request(APIConstants.schoolListURL).validate().responseDecodable(of: [School].self) { result in
            switch result.result{
            case .failure(let error):
                compilition(.failure(.networkingError(error.localizedDescription)))
                break
            case .success(let sdata):
                compilition(.success(sdata))
                break
            }
        }
    }
    
    //MARK: Get Data Using Apple StandersServices
    func getDataUsingAppleSstrenderdServices() {
        var urlComponent = URLComponents()
        urlComponent.scheme = "https"
        urlComponent.host = "data.cityofnewyork.us"
        urlComponent.path = "/resource/s3k6-pzi2.json"
        urlComponent.queryItems = [URLQueryItem(name: "$$app_token", value: "L1KwLSwm1yz1N7aWqFCF4dLmM")]
        //MARK: Another Way to get URL
        //MARK: URL(String: schoolListURL)
        if let url = urlComponent.url{
            //MARK: Default API Request
            let urlSession = URLSession(configuration: .default)
            //MARK: Perform Task With url- Closure in data response or error
            let task = urlSession.dataTask(with: url) { data, response, error in
                guard error == nil else {
                    print("Error Occoured In Error With :- \(error?.localizedDescription)")
                    return
                }
                //MARK: Condition Cheak If Data Found Then Decodable Block Execute
                if let data = data{
                    let  decodedData = JSONDecoder()
                    do {
                        //MARK: Do Mean Frist This Perform
                        let schoolData = try decodedData.decode([School].self, from: data)
                        print("School Data Is Here Bhavin :- \(schoolData)")
                        debugPrint(schoolData)
                    }catch let error{
                        //MARK: If Any Error Found then Catch Execute
                        print("Error Found in Catch Block \(error)")
                    }
                }
            }
            task.resume()
        }
    }
    //MARK: Apple Default Service Is End Here
    
    //MARK: Alamofire API Implimentation Here
    func getDataUsingAlamofire() {
        //TODO: Alamofire Request
        AF.request(APIConstants.schoolListURL).validate().responseDecodable(of: [School].self) { result in
            switch result.result{
            case .failure(let error):
                break
            case .success(let sdata):
                break
            }
        }
    }
    //MARK: Alamofire API Implimentation END-Here
}
