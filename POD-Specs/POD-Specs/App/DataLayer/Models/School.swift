//
//  School.swift
//  POD-Specs
//
//  Created by MacBookPro on 25/02/1946 Saka.
//

import Foundation

struct School: Decodable {
    //MARK: Perameters That Used To Get Response In Project
    let dbn: String?
    let SchoolName: String?
    let OverviewParagraph: String?
    let SchoolEmail: String?
    let AcademicOpportunities1: String?
    let AcademicOpportunities2: String?
    let NeighborHood: String?
    let PhoneNumber: String?
    let WebSite: String?
    let FinalGrades: String?
    let TotalStudents: String?
    let SchoolSports: String?
    let PrimaryAddressLine1: String?
    let City: String?
    let Zip: String?
    let Latitude: String?
    let Longitude: String?
    //MARK: Matching With Perfect Perameter Name With CodingKeys-Enums
    enum CodingKeys: String, CodingKey{
        case dbn = "dbn"
        case SchoolName = "school_name"
        case OverviewParagraph = "overview_paragraph"
        case SchoolEmail = "school_email"
        case AcademicOpportunities1 = "academicopportunities1"
        case AcademicOpportunities2 = "academicopportunities2"
        case NeighborHood = "neighborhood"
        case PhoneNumber = "phone_number"
        case WebSite = "website"
        case FinalGrades = "finalgrades"
        case TotalStudents = "total_students"
        case SchoolSports = "school_sports"
        case PrimaryAddressLine1 = "primary_address_line_1"
        case City = "city"
        case Zip = "zip"
        case Latitude = "latitude"
        case Longitude = "longitude"
    }
    
}

