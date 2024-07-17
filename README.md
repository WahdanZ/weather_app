Sure, here's the updated README with a detailed project structure section:

---

# Weather App


## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Screenshots](#screenshots)
- [Installation](#installation)
- [Usage](#usage)
- [Testing](#testing)
- [Project Structure](#project-structure)

## Introduction
The Weather App is a Flutter application that provides detailed weather forecasts for your location. It uses the OpenWeatherMap API to fetch weather data and displays current conditions, a 7-day forecast, and detailed daily information. The app supports both metric and imperial units and adapts its layout for portrait and landscape modes.

## Features
- Current weather conditions
- 7-day weather forecast
- Detailed daily weather information
- Unit conversion (Celsius/Fahrenheit)
- Adaptive layout for portrait and landscape modes
- Pull-to-refresh functionality
- Error handling with retry option

## Screenshots
<p align="center">
    <img src="https://github.com/WahdanZ/weather_app/blob/main/screenshots/Screenshot1.png" width="300" alt="Home Screen(Portrait)">
    <img src="https://github.com/WahdanZ/weather_app/blob/main/screenshots/Screenshot2.png" width="300" alt="Home Screen(Landscape)">
/p>

## Installation

### Prerequisites
- [Flutter](https://flutter.dev/docs/get-started/install)
- [FVM (Flutter Version Management)](https://fvm.app/docs/getting_started/installation)
- [Dart](https://dart.dev/get-dart)

### Setup
1. **Clone the repository**
    ```bash
    git clone https://github.com/yourusername/weather_app.git
    cd weather_app
    ```

2. **Install dependencies using FVM**
    ```bash
    fvm install
    fvm use
    ```

3. **Get Flutter packages**
    ```bash
    fvm flutter pub get
    ```

4. **Generate necessary files**
    ```bash
    fvm flutter pub run build_runner build --delete-conflicting-outputs
    ```

5. **Configure environment variables**
    - Create a `.env` file in the root directory with your OpenWeatherMap API key.
      ```env
      OPENWEATHERMAP_API_KEY=your_api_key_here
      ```

## Usage
**Run the app**
    ```bash
    fvm flutter run
    ```


## Testing

### Unit Tests
1. **Run unit tests**
    ```bash
    fvm flutter test
    ```

### Widget Tests
1. **Run widget tests**
    ```bash
    fvm flutter test test/widget_tests
    ```


## Project Structure
```
weather_app/
├── lib/
|   ├── base/                     # Base classes and utilities
│   ├── di/                       # Dependency injection setup
│   │   └── injector.dart         # Injector configuration file
│   ├── feature/                  # Main features of the app
│   │   ├── weather/
│   │   │   ├── data/             # Data layer (models, api client)
│   │   │   │   ├── model/        # Data models
│   │   │   │   ├── repository/   # Repository implementation
│   │   │   │   └── weather_api.dart # API client
│   │   │   ├── domain/           # Domain layer (entities, use cases, repository interface)
│   │   │   │   ├── entity/       # Domain entities
│   │   │   │   ├── usecases/     # Use cases
│   │   │   │   └── repository/   # Repository interface
│   │   │   ├── presentation/     # Presentation layer (bloc, widgets, pages)
│   │   │   │   ├── bloc/         # Bloc state management
│   │   │   │   ├── widgets/      # Reusable UI components
│   │   │   │   └── pages/        # UI pages
│   ├── main.dart                 # Entry point of the application
├── test/
│   ├── mocks.dart                # Mock classes for testing
│   ├── unit_tests/               # Unit tests for various features
│   ├── widget_tests/             # Widget tests
│   │    ├── feature/                  # Main features of the app
│   │    │   ├── weather/
│   │    │   │   ├── page/        # Widget tests for pages
│   └── test_injection.dart       # Test dependency injection setup
├── .env                          # Environment variables
├── pubspec.yaml                  # Dart dependencies
```



