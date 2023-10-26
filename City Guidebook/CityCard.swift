//
//  CityCard.swift
//  City Guidebook
//
//  Created by Hoover on 10/26/23.
//

import SwiftUI

struct CityCard: View {
    var city: City
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .background {
                    Image(city.imageName)
                        .resizable()
                }
                .foregroundColor(.clear)
                .cornerRadius(15)
            
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.5)
                .cornerRadius(15)
        
            
            VStack(alignment: .leading) {
                Text(city.name)
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                
                Text(city.summary)
                    .multilineTextAlignment(.leading)
            }
            .padding()
            .foregroundColor(.white)
        }
        .frame(height: 400)
    }
}

//struct CityCard_Previews: PreviewProvider {
//    static var previews: some View {
//        CityCard(city: City(name: "London", summary: "London, the capital of England and the United Kingdom, is a 21st-century city with history stretching back to Roman times.", imageName: "london", attractions: [Attraction]()))
//    }
//}
