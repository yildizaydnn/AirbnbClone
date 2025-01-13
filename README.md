

This project is a **SwiftUI-based application** designed to showcase detailed information about property listings, including features, amenities, and location. It also integrates a carousel for listing images and a map view for better user experience.

## Features

- **Image Carousel:** Displays multiple images of the listing.
- **Detailed Listing Information:**
  - Title, rating, and reviews.
  - Property details (guests, bedrooms, beds, bathrooms).
- **Host Information:** Host name and profile image.
- **Features and Amenities:** Listing's unique features and available amenities.
- **Map View:** Shows the listing's location on a map.
- **Interactive UI:**
  - Reserve button with a total cost display.
  - Horizontal scrollable view for bedrooms.
- **Light/Dark Mode Support:** Ensures a smooth experience in both modes.

## Screenshots


![Simulator Screenshot - iPhone 15 Pro - 2025-01-14 at 00 26 49](https://github.com/user-attachments/assets/590d6884-5fee-4720-a1d2-21497afb1a89)


![Simulator Screenshot - iPhone 15 Pro - 2025-01-14 at 00 26 52](https://github.com/user-attachments/assets/d04d1063-0aa3-4a17-aaa3-03336ac38f33)



![simulator_screenshot_295ADD49-4D32-4340-A677-D0F95159980A](https://github.com/user-attachments/assets/65c3a396-3977-4484-a4a4-d4865b555077)

Listing.swift
Defines the main data structure for property listings:

Listing: Contains property details such as title, rating, owner info, and features.
ListingFeatures: Enum defining features like Self Check-In and Superhost.
ListingAmenities: Enum defining amenities like Wifi, Pool, and Kitchen.
ListingType: Enum defining the type of property (e.g., Apartment, House).
ListingDetailView.swift
The main view file displaying the property details. Key components include:

ListingImageCarouselView: Displays a carousel of listing images.
Map: Shows the property location.
Feature and amenity listings.
Preview
Provides a developer preview using mock data.

