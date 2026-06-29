# ResponsiveDashBoard

> A Flutter starter template for building multiplatform responsive dashboard layouts.

![GitHub stars](https://img.shields.io/github/stars/OmarAliSiad/ResponsiveDashBoard?style=for-the-badge&logo=github) ![GitHub forks](https://img.shields.io/github/forks/OmarAliSiad/ResponsiveDashBoard?style=for-the-badge&logo=github) ![GitHub issues](https://img.shields.io/github/issues/OmarAliSiad/ResponsiveDashBoard?style=for-the-badge&logo=github) ![Last commit](https://img.shields.io/github/last-commit/OmarAliSiad/ResponsiveDashBoard?style=for-the-badge&logo=github) ![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white) ![Java (Gradle)](https://img.shields.io/badge/Java%20(Gradle)-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white) ![Kotlin](https://img.shields.io/badge/Kotlin-7F52FF?style=for-the-badge&logo=kotlin&logoColor=white)

## 📑 Table of Contents

- [📝 Description](#-description)
- [✨ Key Features](#-key-features)
- [🎯 Use Cases](#-use-cases)
- [📸 Screenshots](#-screenshots)
- [🛠️ Tech Stack](#tech-stack)
- [⚡ Quick Start](#-quick-start)
- [🚀 Available Scripts](#-available-scripts)
- [📁 Project Structure](#-project-structure)
- [🔧 Development Setup](#development-setup)
- [👥 Contributors](#-contributors)
- [🤝 Contributing](#-contributing)

## 📝 Description

ResponsiveDashBoard is a Flutter-based template designed to kickstart the development of multiplatform dashboard applications. It addresses the challenge of building user interfaces that must seamlessly adapt to various screen sizes, providing a foundation that spans mobile, desktop, and web environments.

## ✨ Key Features

- **📱 Multiplatform Target Support** — Deploy to Android, iOS, Windows, macOS, Linux, and Web platforms using Flutter's single codebase system.
- **📐 Responsive Layout Foundation** — Provides a clean starting structure tailored for organizing adaptive dashboard widgets across different form factors.
- **🧪 Integrated Test Suite** — Features a preconfigured testing directory with standard support for executing flutter test commands.
- **📂 Organized Asset Management** — Includes a dedicated assets folder configuration for managing static files, images, and other local resources.

## 🎯 Use Cases

- Bootstrapping a new multiplatform dashboard application with a pre-configured platform build setup.
- Prototyping responsive layouts that need to be verified on both mobile screens and web browsers.
- Establishing a standardized project baseline for cross-platform Flutter development with integrated test configurations.

## 📸 Screenshots

![card backGorundColor](https://raw.githubusercontent.com/OmarAliSiad/ResponsiveDashBoard/main/assets/images/card_backGorundColor.png)

<h2 id="tech-stack">🛠️ Tech Stack</h2>

- 🤖 **Android (Native)**
- 💙 **Flutter**
- ☕ **Java (Gradle)**
- 🟪 **Kotlin**
- 🍎 **iOS (Native)**

## ⚡ Quick Start

```bash

# 1. Clone the repository
git clone https://github.com/OmarAliSiad/ResponsiveDashBoard.git

# Get packages and run
flutter pub get && flutter run
```

## 🚀 Available Scripts

- **run** — `flutter run`
- **test** — `flutter test`

## 📁 Project Structure

```
.
├── analysis_options.yaml
├── assets
│   ├── fonts
│   │   ├── Montserrat-Medium.ttf
│   │   └── Montserrat-Regular.ttf
│   └── images
│       ├── avatar_1.svg
│       ├── avatar_2.svg
│       ├── avatar_3.svg
│       ├── balance.svg
│       ├── card_backGorundColor.png
│       ├── dashboard.svg
│       ├── expenses.svg
│       ├── gallery.svg
│       ├── income.svg
│       ├── logout.svg
│       ├── my_investments.svg
│       ├── my_transctions.svg
│       ├── settings.svg
│       ├── statistics.svg
│       └── wallet_account.svg
├── lib
│   ├── core
│   │   └── utils
│   │       ├── app_styles.dart
│   │       ├── assets.dart
│   │       └── size_config.dart
│   ├── features
│   │   ├── data
│   │   │   ├── models
│   │   │   │   ├── drawer_item.dart
│   │   │   │   └── user_info_model.dart
│   │   │   └── providers
│   │   │       └── select_items_provider.dart
│   │   └── presenation
│   │       ├── data
│   │       │   └── models
│   │       │       └── ...
│   │       ├── views
│   │       │   └── dash_board_view.dart
│   │       └── widgets
│   │           ├── active_and_incative_item.dart
│   │           ├── active_expenses_item.dart
│   │           ├── adaptive_layout.dart
│   │           ├── all_expenses.dart
│   │           ├── all_expenses_and_quick_invoice.dart
│   │           ├── all_expenses_header.dart
│   │           ├── all_expenses_item.dart
│   │           ├── all_expenses_item_header.dart
│   │           ├── all_expenses_item_list_view.dart
│   │           ├── custom_app_bar.dart
│   │           ├── custom_button.dart
│   │           ├── custom_container_back_ ground.dart
│   │           ├── custom_dots_indicator.dart
│   │           ├── custom_drawer.dart
│   │           ├── custom_settings.dart
│   │           ├── custom_text_field.dart
│   │           ├── dash_board_layout.dart
│   │           ├── dash_board_mobile_layout.dart
│   │           ├── desktop_layout..dart
│   │           ├── details_user_info.dart
│   │           ├── dots_indicator.dart
│   │           ├── drawer_item.dart
│   │           ├── drawer_items_list_view.dart
│   │           ├── header_and_bottom_of_card.dart
│   │           ├── inactive_expenses_item.dart
│   │           ├── income_section.dart
│   │           ├── income_section_without_detailed.dart
│   │           ├── latest_transction.dart
│   │           ├── latest_transction_list_view.dart
│   │           ├── mobile_layout.dart
│   │           ├── my_card.dart
│   │           ├── my_card_section.dart
│   │           ├── my_transaction_history_header.dart
│   │           ├── my_transactions_container.dart
│   │           ├── my_transactions_list_view.dart
│   │           ├── quick_invoice.dart
│   │           ├── quick_invoice_header.dart
│   │           ├── quick_invoice_info_form.dart
│   │           ├── range_options.dart
│   │           ├── tablet_layout.dart
│   │           └── user_info_tile.dart
│   ├── main.dart
│   └── views
│       ├── my_investments_view.dart
│       ├── my_transaction_view.dart
│       ├── statistics_view.dart
│       └── wallet_account_view.dart
├── linux
│   ├── CMakeLists.txt
│   ├── flutter
│   │   ├── CMakeLists.txt
│   │   ├── generated_plugin_registrant.cc
│   │   ├── generated_plugin_registrant.h
│   │   └── generated_plugins.cmake
│   ├── main.cc
│   ├── my_application.cc
│   └── my_application.h
├── macos
│   ├── Flutter
│   │   ├── Flutter-Debug.xcconfig
│   │   ├── Flutter-Release.xcconfig
│   │   └── GeneratedPluginRegistrant.swift
│   ├── Runner
│   │   ├── AppDelegate.swift
│   │   ├── Assets.xcassets
│   │   │   └── AppIcon.appiconset
│   │   │       ├── Contents.json
│   │   │       ├── app_icon_1024.png
│   │   │       ├── app_icon_128.png
│   │   │       ├── app_icon_16.png
│   │   │       ├── app_icon_256.png
│   │   │       ├── app_icon_32.png
│   │   │       ├── app_icon_512.png
│   │   │       └── app_icon_64.png
│   │   ├── Base.lproj
│   │   │   └── MainMenu.xib
│   │   ├── Configs
│   │   │   ├── AppInfo.xcconfig
│   │   │   ├── Debug.xcconfig
│   │   │   ├── Release.xcconfig
│   │   │   └── Warnings.xcconfig
│   │   ├── DebugProfile.entitlements
│   │   ├── Info.plist
│   │   ├── MainFlutterWindow.swift
│   │   └── Release.entitlements
│   ├── Runner.xcodeproj
│   │   ├── project.pbxproj
│   │   ├── project.xcworkspace
│   │   │   └── xcshareddata
│   │   │       └── IDEWorkspaceChecks.plist
│   │   └── xcshareddata
│   │       └── xcschemes
│   │           └── Runner.xcscheme
│   ├── Runner.xcworkspace
│   │   ├── contents.xcworkspacedata
│   │   └── xcshareddata
│   │       └── IDEWorkspaceChecks.plist
│   └── RunnerTests
│       └── RunnerTests.swift
├── pubspec.lock
├── pubspec.yaml
├── test
│   └── widget_test.dart
├── web
│   ├── favicon.png
│   ├── icons
│   │   ├── Icon-192.png
│   │   ├── Icon-512.png
│   │   ├── Icon-maskable-192.png
│   │   └── Icon-maskable-512.png
│   ├── index.html
│   └── manifest.json
└── windows
    ├── CMakeLists.txt
    ├── flutter
    │   ├── CMakeLists.txt
    │   ├── generated_plugin_registrant.cc
    │   ├── generated_plugin_registrant.h
    │   └── generated_plugins.cmake
    └── runner
        ├── CMakeLists.txt
        ├── Runner.rc
        ├── flutter_window.cpp
        ├── flutter_window.h
        ├── main.cpp
        ├── resource.h
        ├── resources
        │   └── app_icon.ico
        ├── runner.exe.manifest
        ├── utils.cpp
        ├── utils.h
        ├── win32_window.cpp
        └── win32_window.h
```

<h2 id="development-setup">⚙️ Development Setup</h2>

### Flutter
1. Install the [Flutter SDK](https://flutter.dev/docs/get-started/install)
2. `flutter pub get && flutter run`

## 👥 Contributors

Thanks to everyone who has contributed to this project:

<p align="left">
<a href="https://github.com/OmarAliSiad" title="OmarAliSiad"><img src="https://avatars.githubusercontent.com/u/105920279?v=4&s=64" width="64" height="64" alt="OmarAliSiad" style="border-radius:50%" /></a>
</p>

[See the full list of contributors →](https://github.com/OmarAliSiad/ResponsiveDashBoard/graphs/contributors)

## 👥 Contributing

Contributions are welcome! Here's the standard flow:

1. **Fork** the repository
2. **Clone** your fork: `git clone https://github.com/OmarAliSiad/ResponsiveDashBoard.git`
3. **Branch**: `git checkout -b feature/your-feature`
4. **Commit**: `git commit -m 'feat: add some feature'`
5. **Push**: `git push origin feature/your-feature`
6. **Open** a pull request

Please follow the existing code style and include tests for new behavior where applicable.

