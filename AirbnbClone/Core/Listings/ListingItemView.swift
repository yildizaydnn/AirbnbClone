//
//  ListingView.swift
//  AirbnbClone
//
//  Created by Yıldız Aydın on 7.01.2025.
//

import SwiftUI

struct ListingItemView: View {
  
    var images = [
     "5",
     "6",
     "7",
     "8",

    ]
    
    
    var body: some View {
        VStack(spacing: 8) {
            //images
           
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //listig details
            HStack(alignment: .top){
                //details
                
                VStack(alignment: .leading){
                    Text("miami")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    
                    Text("nov 2- 10")
                        .foregroundStyle(.gray)
                   
                    HStack{
                        Text("$200")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundColor(.black)
                    
                }
                
                Spacer()
                
                //rating
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("4.86")
                      
                }
                .foregroundStyle(.black)
            }
          
            .font(.footnote)
        }
        .padding(20)
    }
}

#Preview {
    ListingItemView()
}
