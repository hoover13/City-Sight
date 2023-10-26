//
//  DataService.swift
//  City Guidebook
//
//  Created by Hoover on 10/26/23.
//

import Foundation


struct DataService {
    
    func getData() -> [City] {
       
        let pathString = Bundle.main.path(forResource: "DemoData", ofType: "json")
        
        if let path = pathString {
            
            let url = URL(fileURLWithPath: path)
            
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
               
                do {
                    let cities = try decoder.decode([City].self, from: data)
                    
                
                    return cities
                }
                catch {
                    print("Error: could not parse the json \(error)")
                }
            }
            catch {
                print(error)
            }
            
            
        }
        
        return [City]()
    }
}
