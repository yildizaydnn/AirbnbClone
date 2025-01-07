//
//  ListingImageCarouselView.swift
//  AirbnbClone
//
//  Created by Yıldız Aydın on 7.01.2025.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
     "5",
     "6",
     "7",
     "8",

    ]
        
    var body: some View {
        TabView{
            ForEach(images, id: \.self) { image in
               Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
            
            .tabViewStyle(.page)
            
    }
}

#Preview {
    ListingImageCarouselView()
}
