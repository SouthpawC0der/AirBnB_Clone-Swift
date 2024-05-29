//
//  ExploreView.swift
//  airbnb_clone
//
//  Created by Christopher Doyle on 5/28/24.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    
    var body: some View {
        NavigationStack {
            
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView)
            } else {
                ScrollView {
                    SearchFilter()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                            
                        }
                    
                    LazyVStack(spacing: 32) {
                        ForEach(0...10, id: \.self) {listing in
                            NavigationLink(value: listing) {
                                ListingView()
                                     .frame(height: 400)
                                     .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }
                .navigationDestination(for: Int.self) { listing in
                    DetailView()
                        .navigationBarBackButtonHidden()
                }
            }
          
        }
    }
}

#Preview {
    ExploreView()
}
