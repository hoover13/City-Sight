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
        
        NavigationStack {
            ScrollView(showsIndicators: false) {
                
                VStack {
                    ForEach(cities) { city in
                        
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                                .padding(.bottom, 20)
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea()

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
