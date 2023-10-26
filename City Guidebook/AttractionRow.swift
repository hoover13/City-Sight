//
//  AttractionRow.swift
//  City Guidebook
//
//  Created by Hoover on 10/26/23.
//

import SwiftUI

struct AttractionRow: View {
    
    var attraction: Attraction
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            
            Image(attraction.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 150)
                .cornerRadius(15)
//                .padding()
            
            Text(attraction.name)
                .font(.largeTitle)
                .bold()
            
            Text(attraction.summary)
                .multilineTextAlignment(.leading)
        }
    }
}

struct AttractionRow_Previews: PreviewProvider {
    static var previews: some View {
        AttractionRow(attraction:  Attraction(name: "Buckingham Palace",
                                              summary: "Buckingham Palace is a London royal residence and the administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality.",
                                              longDescription: """
           Buckingham Palace is a London royal residence and the administrative headquarters of the monarch of the United Kingdom. Located in the City of Westminster, the palace is often at the centre of state occasions and royal hospitality. It has been a focal point for the British people at times of national rejoicing and mourning.

           Originally known as Buckingham House, the building at the core of today's palace was a large townhouse built for the Duke of Buckingham in 1703 on a site that had been in private ownership for at least 150 years. It was acquired by King George III in 1761 as a private residence for Queen Charlotte and became known as The Queen's House. During the 19th century it was enlarged by architects John Nash and Edward Blore, who constructed three wings around a central courtyard. Buckingham Palace became the London residence of the British monarch on the accession of Queen Victoria in 1837.
           """,
                                              imageName: "buckingham", latLong: "51.50148418749087, -0.1410746109020975"))
    }
}
