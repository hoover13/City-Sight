//
//  Attraction.swift
//  City Guidebook
//
//  Created by Hoover on 10/26/23.
//

import Foundation

struct Attraction: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
    
    
}
