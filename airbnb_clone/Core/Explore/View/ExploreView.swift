//
//  ExploreView.swift
//  airbnb_clone
//
//  Created by Christopher Doyle on 5/28/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    @StateObject var viewModel = ExploreViewModel(service: ExploreService())
    var body: some View {
        NavigationStack {
            
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView, viewModel: viewModel)
            } else {
                ScrollView {
                    SearchFilter(location: $viewModel.searchLocation)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                            
                        }
                    
                    LazyVStack(spacing: 32) {
                        ForEach(viewModel.listings) {listing in
                            NavigationLink(value: listing) {
                                ListingView(listing: listing)
                                     .frame(height: 400)
                                     .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }
                .navigationDestination(for: Listing.self) { listing in
                    DetailView(listing: listing)
                        .navigationBarBackButtonHidden()
                }
            }
          
        }
    }
}

#Preview {
    ExploreView()
}
