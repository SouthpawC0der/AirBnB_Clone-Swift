//
//  ExploreService.swift
//  airbnb_clone
//
//  Created by Christopher Doyle on 6/6/24.
//

import Foundation


class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
