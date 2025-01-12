//
//  DeveloperPreview.swift
//  AirbnbClone
//
//  Created by Yıldız Aydın on 12.01.2025.
//

import Foundation

class DeveloperPreview{
        var listings: [Listing] = [
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                owerName: "John Smith",
                ownerImageUrl: "male-profile-photo",
                numberOfBathrooms: 4,
                numberOfBedrooms: 3,
                numberOfGuests: 7,
                numberOfBeds: 4,
                pricePerNight: 567,
                latitude: 25.78936,
                longitude: -80.1936, 
                imageURLs: ["5","6","7"],
                address: "124 Main St",
                city: "Miami",
                state: "Florida",
                title: "Miami Villa",
                rating: 4.86,
                features: [.selfCheckIn, .superHost],
                amenities: [.wifi, .alarmSystem, .tv , .kitchen, .office],
                type: .villa
            ),
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                owerName: "John Smith",
                ownerImageUrl: "male-profile-photo",
                numberOfBathrooms: 4,
                numberOfBedrooms: 3,
                numberOfGuests: 7,
                numberOfBeds: 4,
                pricePerNight: 567,
                latitude: 25.7796,
                longitude: -80.1936,
                imageURLs: ["7","8"],
                address: "124 Main St",
                city: "Miami",
                state: "Florida",
                title: "Miami Beach House",
                rating: 4.86,
                features: [.selfCheckIn, .superHost],
                amenities:  [.wifi, .alarmSystem, .tv , .kitchen, .office],
                type: .villa
            )
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                owerName: "Steve Johnson",
                ownerImageUrl: "male-profile-photo",
                numberOfBathrooms: 4,
                numberOfBedrooms: 3,
                numberOfGuests: 4,
                numberOfBeds: 4,
                pricePerNight: 763,
                latitude: 34.2,
                longitude: -118.0426,
                imageURLs: ["5","6","9"],
                address: "124 Main St",
                city: "Los Angeles",
                state: "California",
                title: "Beatiful Los Angeles home in Malibu",
                rating: 4.97,
                features: [.selfCheckIn, .superHost],
                amenities:  [.wifi, .alarmSystem, .pool],
                type: .apartment
            )
        
        
        ]
    }


