# Marvel Comics App

Marvel Comics App is an iOS application that allows users to explore Marvel characters, events, and comics. The app integrates with the Marvel API to display various content categories and it provides Firebase-based authentication for user login and registration. Users can manage their favorite characters within the app.

## Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Architecture](#architecture)
- [Screens](#screens)
- [Requirements](#requirements)

## Features

- List Marvel characters
- Display detailed information about each character on a character details page
- User registration and login using Firebase Auth
- Manage favorite characters
- Load character images asynchronously with `AsyncImage`
- Display content categories on the main screen without page navigation

## Installation

1. **Clone the Repository:**
    ```bash
    git clone https://github.com/sulekaptan/MarvelApp.git
    cd MarvelApp
    ```

2. **Install Dependencies:**
   The project uses Swift Package Manager for dependency management.
   - Open the project in Xcode, right-click the project file, and select "Resolve Package Dependencies."

3. **API Key and Firebase Configuration:**
   - Add your Marvel API key in `API.swift`.
   - Download `GoogleService-Info.plist` from Firebase and add it to the root of the project directory.

## Usage

* The HomeView displays various Marvel content categories. Each category shows a name and image, which is loaded using `AsyncImage`.
* This screen lists characters with pagination, utilizing AsyncImage to load character images.
* Handles user login and registration through `Firebase Authentication`.
* Basic configuration to fetch data from the `Marvel API`.

## Architecture
The app follows the MVVM (Model-View-ViewModel) architecture pattern.
* Model: Contains data structures matching the API response.
* ViewModel: Handles API calls, processes data and prepares it for the UI.
* View: Builds the user interface and displays data from the ViewModel.

## Screens
<img width="200"  src="https://github.com/user-attachments/assets/6bbb8a02-4bd3-4de7-b8ad-2499d7d680b9">
<img width="200" src="https://github.com/user-attachments/assets/aed878bd-cf24-41cd-b22d-969df19c4524">
<img width="200"src="https://github.com/user-attachments/assets/29c1026f-6cad-4a7f-ae90-68e592023c76">
<img width="200" src="https://github.com/user-attachments/assets/5058b8a9-4d64-4206-96dc-c16da9752c55">
<img width="200" src="https://github.com/user-attachments/assets/e9ca03ad-90e1-40a8-a737-6cf9b2b089ec">
<img width="200" src="https://github.com/user-attachments/assets/800b5cf4-f1ac-4877-b863-a52053f8ba83">
<img width="200"  src="https://github.com/user-attachments/assets/78bffbcf-6238-4bf4-aaa2-513156d135f8">
<img width="200"  src="https://github.com/user-attachments/assets/ffc8c6f2-3286-448e-b7c8-52fc2a602bbe">
<img width="200"  src="https://github.com/user-attachments/assets/55d84fab-d1ca-4919-9000-d659ff4f33a4">
<img width="200" src="https://github.com/user-attachments/assets/693a3dfd-28cf-4608-ba58-40f01f544b0d">
<img width="200" src="https://github.com/user-attachments/assets/e50fb42f-8bac-4c66-a4af-ec78612574c5">
<img width="200" src="https://github.com/user-attachments/assets/ad69884b-b2ec-4fd4-affc-6e9c068197d3">
<img width="200"src="https://github.com/user-attachments/assets/0b4757f8-0080-4006-ac70-01b831c0849d">
<img width="200" src="https://github.com/user-attachments/assets/2f87a37a-e4c8-41ba-8d01-16aa31782ef0">

## Requirements
* iOS 14.0+
* Xcode 12.0+
* Swift 5.0+

## TO-DO
* Make Favorites Functional
* Implement Send Feedback Functionality
* Implement Notifications
* Add Localization
* Implement Logout Functionality
* Implement Delete Account Feature
