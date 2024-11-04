# Marvel Comics App

Marvel Comics App is an iOS application that allows users to explore Marvel characters, events, and comics. The app integrates with the Marvel API to display various content categories and it provides Firebase-based authentication for user login and registration. Users can manage their favorite characters within the app.

## Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Architecture](#architecture)
- [Screens](#screens)
- [Development](#development)
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
<img width="200" src="https://github.com/user-attachments/assets/e6756c3c-7c82-4920-a3f0-3c8418346814">
<img width="200" src="https://github.com/user-attachments/assets/12547cad-b985-47eb-ac89-80b5bec21b9b">
<img width="200" src="https://github.com/user-attachments/assets/42e8d8d5-341a-4a24-9bbb-dfb210c64b26">
<img width="200" src="https://github.com/user-attachments/assets/898a9fa2-d4f3-4eb3-b0a8-4b905bb1d9cc">
<img width="200" src="https://github.com/user-attachments/assets/865a029e-0913-4c0c-a42a-71480c4988bf">
<img width="200" src="https://github.com/user-attachments/assets/63fba956-b697-45d2-b831-46b31ae616bb">
<img width="200"  src="https://github.com/user-attachments/assets/d0aefbe1-753a-4a36-b17b-34d0ca81a16d">
<img width="200" src="https://github.com/user-attachments/assets/f9fdc9a9-3767-4ff8-9f77-82ac19536512">
<img width="200" src="https://github.com/user-attachments/assets/ecc3e623-2663-4b22-89a8-f4995dc54c26">
<img width="200" src="https://github.com/user-attachments/assets/d7d95e58-e419-4ab6-a36a-ab8576082c25">
<img width="200" src="https://github.com/user-attachments/assets/74279dee-a9d0-468e-a081-e2acc7d762f1">
<img width="200" src="https://github.com/user-attachments/assets/a433af15-7edc-47e9-83e9-9aa6c8a1d6d6">
<img width="200" src="https://github.com/user-attachments/assets/0ce8f3a9-45aa-4b02-af37-397e9bfdbf07">
<img width="200" src="https://github.com/user-attachments/assets/2e054fa5-2a98-4164-bcd5-b9e5f90bf281">

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
