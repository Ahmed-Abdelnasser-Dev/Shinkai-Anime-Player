# Shinkai Anime Player

Shinkai Anime Player is a Flutter-based anime streaming app designed to provide a smooth and interactive anime viewing experience. It features a modern UI, character browsing, and quick navigation between different sections of the app.

---

## Features

* **Home Page**: Browse anime content with categorized tabs, featured characters, and trending series.
* **Character Cards**: Display anime characters with their image, name, and genre.
* **Custom Bottom Navigation Bar**: Smooth navigation between Home, Search, Favorites, and Settings.
* **Responsive Design**: Supports multiple screen sizes using Flutter ScreenUtil.
* **Theming**: Custom colors, text styles, and dark/light mode support for a consistent look and feel.

---

## Demo

The demo video of the app is located in the repository at:

`demo/demo 1.mp4`

You can play the video locally to see the app in action.

---

## Installation

1.Clone the repository:

```bash
git clone https://github.com/Ahmed-Abdelnasser-Dev/Shinkai-Anime-Player.git
```

2.Navigate to the project directory:

```bash
cd Shinkai-Anime-Player
```

3.Install dependencies:

```bash
flutter pub get
```

4.Run the app on your desired platform:

```bash
flutter run
```

---

## Project Structure

```

lib/
 ├─ main.dart                      # App entry point
 ├─ core/                          # Core utilities and shared resources
 │   ├─ widgets/
 │   │   └─ custom_bottom_nav_bar.dart   # Custom Bottom Navigation Bar
 │   ├─ theme/
 │   │   ├─ colors.dart                   # App color palette
 │   │   └─ text_styles.dart              # Text styling constants
 │   └─ routing/                          # Navigation helpers (if any)
 ├─ features/                         # Feature modules
 │   └─ home/
 │       ├─ presentation/
 │       │   ├─ pages/
 │       │   │   └─ home_page.dart       # Main home page layout
 │       │   └─ widgets/
 │       │       ├─ character_card.dart  # Widget to display anime characters
 │       │       └─ categories_tabs.dart # Tabs to filter categories of anime
 │       └─ data/                       # Local or remote data handling (if exists)
 │       └─ models/                     # Data models (Anime, Character, etc.)

```

---

## Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_screenutil: ^5.5.0
  flutter_svg: ^1.0.0
  provider: ^6.0.0
  fvp: ^0.0.1
  flutter_animate: ^4.0.0
  animations: ^2.0.2
  shimmer_animation: ^2.1.0+1
  simple_animations: ^4.0.1
  flutter_staggered_animations: ^1.0.0
  curved_navigation_bar: ^1.0.3
  spring: ^2.0.2
  animated_text_kit: ^4.2.1
  sprung: ^3.0.0
  animated_widgets: ^1.1.0
  widget_circular_animator: ^1.0.0
```

Install the dependencies with:

```bash
flutter pub get
```

---

## License

This project is licensed under the MIT License.

---
