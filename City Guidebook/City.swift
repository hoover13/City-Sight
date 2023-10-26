//
//  City.swift
//  City Guidebook
//
//  Created by Hoover on 10/26/23.
//

import Foundation

class City: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var imageName : String
    var attractions: [Attraction]
}
