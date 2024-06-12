//
//  ListingView.swift
//  airbnb_clone
//
//  Created by Christopher Doyle on 5/29/24.
//

import SwiftUI


struct ListingView: View {
    let listing: Listing
    
    
    var body: some View {
        VStack(spacing: 8) {
            
            CarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //Details
            
            HStack(alignment: .top) {
                //details
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("10 mi away")
                        .foregroundStyle(.gray)
                    Text("Jun 4 - 14")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                //ratings
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("$\(listing.rating)")
                }
            }
            .font(.footnote)
            .foregroundStyle(.black)
        }
        .padding()
    }
}

#Preview {
    ListingView(listing: DeveloperPreview.shared.listings[0])
}
