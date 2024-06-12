//
//  DeveloperPreview.swift
//  airbnb_clone
//
//  Created by Christopher Doyle on 6/5/24.
//

import Foundation


class DeveloperPreview {
    static let shared = DeveloperPreview()
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 3,
            numberOfBeds: 4,
            pricePerNight: 278,
            latitude: 25.7850,
            longitude: -80.1936,
            imageUrls: ["listing-2", "listing-1", "listing-3", "listing-4"],
            address: "124 Beach st",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 3,
            numberOfBeds: 4,
            pricePerNight: 278,
            latitude: 25.7850,
            longitude: -80.1936,
            imageUrls: ["listing-2", "listing-1", "listing-3", "listing-4"],
            address: "124 Beach st",
            city: "Miami",
            state: "Florida",
            title: "Miami Beach House",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Kristen Pike",
            ownerImageUrl: "female-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 3,
            numberOfBeds: 4,
            pricePerNight: 278,
            latitude: 25.7850,
            longitude: -80.1936,
            imageUrls: ["listing-2", "listing-1", "listing-3", "listing-4"],
            address: "124 Beach st",
            city: "Miami",
            state: "Florida",
            title: "Miami Nice",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Peter Parker",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 3,
            numberOfBeds: 4,
            pricePerNight: 278,
            latitude: 25.7850,
            longitude: -80.1936,
            imageUrls: ["listing-2", "listing-1", "listing-3", "listing-4"],
            address: "124 Beach st",
            city: "Queens",
            state: "New York",
            title: "Web Head",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Lewis Latimore",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 3,
            numberOfBeds: 4,
            pricePerNight: 278,
            latitude: 25.7850,
            longitude: -80.1936,
            imageUrls: ["listing-2", "listing-1", "listing-3", "listing-4"],
            address: "124 Beach st",
            city: "Queens",
            state: "New York",
            title: "Lightfill House",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .tv],
            type: .villa
        ),
    ]
}
