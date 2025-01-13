

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

<img width="328" alt="Ekran Resmi 2025-01-14 00 36 03" src="https://github.com/user-attachments/assets/2853673b-db9c-4cc5-80e5-c7b9e1dd18c3" />


<img width="338" alt="Ekran Resmi 2025-01-14 00 35 58" src="https://github.com/user-attachments/assets/e4648005-4cbe-471f-8014-be51bad18a68" />

<img width="320" alt="Ekran Resmi 2025-01-14 00 35 51" src="https://github.com/user-attachments/assets/5a9e1c93-a04d-4333-932d-6762d7a331c8" />

<img width="332" alt="Ekran Resmi 2025-01-14 00 35 40" src="https://github.com/user-attachments/assets/53a6ddaa-a161-4524-93e1-c7831d2bfce9" />





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

