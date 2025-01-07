//
//  ListingDetailView.swift
//  AirbnbClone
//
//  Created by Yıldız Aydın on 7.01.2025.
//

import SwiftUI

struct ListingDetailView: View {
   
    var images = [
     "5",
     "6",
     "7",
     "8",

    ]
    
    var body: some View {
        ScrollView{
            ListingImageCarouselView()
                .frame(height: 320)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        Text("4.86")
                        Text(" - ")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .font(.caption)
                    .foregroundStyle(.black)
                
                    
                }
            }
          
        }
    }
}

#Preview {
    ListingDetailView()
}
