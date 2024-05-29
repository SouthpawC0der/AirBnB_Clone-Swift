//
//  ListingView.swift
//  airbnb_clone
//
//  Created by Christopher Doyle on 5/29/24.
//

import SwiftUI


struct ListingView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    var body: some View {
        VStack(spacing: 8) {
            
            CarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //Details
            
            HStack(alignment: .top) {
                //details
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    
                    Text("10 mi away")
                        .foregroundStyle(.gray)
                    Text("Jun 4 - 14")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4) {
                        Text("$237")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                
                //ratings
                
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    
                    Text("4.92")
                }
            }
            .font(.footnote)
            .foregroundStyle(.black)
        }
        .padding()
    }
}

#Preview {
    ListingView()
}
