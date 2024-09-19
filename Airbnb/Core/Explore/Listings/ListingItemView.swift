//
//  ListingView.swift
//  Airbnb
//
//  Created by Nicolas Rios on 9/18/24.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    var body: some View {
        VStack(spacing:8) {
            //imagesListing
            ListingImageCarouselView()
                .frame(height: 320 )
                .clipShape(RoundedRectangle(cornerRadius:10))
            
                .frame(height:320 )
                .clipShape(RoundedRectangle(cornerRadius:10))
                .tabViewStyle(.page)
            
            HStack(alignment: .top) {
                
                VStack(alignment: .leading) {
                    Text("Maimi,FL")
                        .fontWeight(.semibold)
                    
                    
                    Text("12 Mi Away")
                        .foregroundStyle(.gray)
                    
                    Text("Nov 3-10")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing:4) {
                        Text("567")
                            .fontWeight(.semibold)
                        Text("Night")
                        
                    }
                }
                Spacer()
                
                HStack(spacing:2) {
                    Image(systemName: "star.fill")
                    Text("4.8")
                    
                    
                }
                .foregroundStyle(.black)
                
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
