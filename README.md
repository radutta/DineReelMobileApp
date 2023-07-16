# dinereel

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Folder Structure

lib/
  ├── core/
  │     ├── errors/                         # Custom error classes
  │     ├── exceptions/                     # Exception handling utilities
  │     └── utils/                          # Shared utility functions
  │
  ├── data/
  │     ├── datasources/                    # Data sources (APIs, local storage)
  │     ├── repositories/                   # Repository implementations
  │     └── repositories.dart               # Abstract repository contracts
  │
  ├── domain/
  │    └── models/                          # Domain-specific models and entities
  │
  ├── presentation/
  │     ├── common_cubit/                   # Controller management for common parts
  │     ├── common_widgets/                 # Shared UI widgets
  │     ├── features/                       # Root folder for all page specific widgets
  │     │    ├── order/                     # Folder specific to one functional logical entity of all UI
  │     │    │    ├── screens/
  │     │    │    │    ├── page_1.dart      # individual screen as per figma. Goal is will have minimum code here and maximum widget reuse
  │     │    │    │    └── page_2.dart      # same as abobe
  │     │    │    ├── widgets/
  │     │    │    │    └── widget_1.dart    # Widget used in the screens
  │     │    │    └── cubit/                # instead of cubit can we name it states
  │     │    │         └── states_1.dart    # cubit state file. Give name specific to functionality
  │     │    └── menu/                      # Folder like order and will continue
  │     │    .
  │     └── localization/                   # localization files
  │           └──en-us.json
  │
  ├── services/                             # Application-level services
  ├── themes/                               # Theme-related files (colors, fonts, etc.)
  ├── main.dart                             # App entry point (top-level)
  └── routes.dart  
