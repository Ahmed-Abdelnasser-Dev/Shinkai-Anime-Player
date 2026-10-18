# Shinkai Anime Player

A Flutter anime streaming app UI with a modern, animated design. Browse anime by category, explore characters, view details, and check out premium plans.

## Demo

A demo video is in the repo: [`demo/demo 1.mp4`](demo/demo%201.mp4)

## Features

- **Home page** with category tabs, featured characters, and trending series
- **Character cards** showing each character's image, name, and genre
- **Details page** for each anime
- **Upgrade plan** screen for premium subscriptions
- **Custom bottom navigation bar** for Home, Search, Favorites, and Settings
- **Localization** with easy_localization
- **Responsive layout** with flutter_screenutil, tested across devices with device_preview
- Custom colors, text styles, and theming

## Architecture

Clean Architecture, split by feature:

```
lib/
├── main.dart
├── core/
│   ├── routing/
│   ├── theme/           Colors and text styles
│   └── widgets/         Custom bottom nav bar
└── features/
    ├── home/            data / domain / presentation
    ├── details/         data / domain / presentation
    └── upgrade_plan/    data / domain / presentation
```

## Tech Stack

| Concern | Packages |
|---|---|
| State | flutter_bloc |
| DI | get_it |
| Networking | dio, retrofit, pretty_dio_logger |
| Models | freezed, json_serializable |
| Localization | easy_localization, intl |
| UI | flutter_screenutil, flutter_svg, flutter_native_splash, device_preview |

## Getting Started

```bash
git clone https://github.com/Ahmed-Abdelnasser-Dev/Shinkai-Anime-Player.git
cd Shinkai-Anime-Player
flutter pub get
flutter run
```
