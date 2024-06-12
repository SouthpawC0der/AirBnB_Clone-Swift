//
//  CarouselView.swift
//  airbnb_clone
//
//  Created by Christopher Doyle on 5/29/24.
//

import SwiftUI

struct CarouselView: View {
    let listing: Listing
    
    var body: some View {
        TabView {
            ForEach(listing.imageUrls, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    CarouselView(listing: DeveloperPreview.shared.listings[0])
}
