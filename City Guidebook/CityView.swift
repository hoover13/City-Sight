//
//  ContentView.swift
//  City Guidebook
//
//  Created by Hoover on 10/26/23.
//

import SwiftUI

struct CityView: View {
    
    @State private var cities = [City]()
    var dataService = DataService()

    var body: some View {
        ScrollView {
            
            VStack {
                ForEach(cities) { city in
                    Text(city.name)
                }
            }
        }

        .onAppear {
            cities = dataService.getData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
    }
}
