# Ventrift

A Flutter-based social travel app that allows users to review places, post media, and interact
socially. This project leverages:

- Flutter (front-end)
- BLoC (and Cubit) for state management
- Supabase (PostgreSQL database)
- Powersync for offline capabilities
- Drift for ORM (already integrated with Powersync)

---

## Table of Contents

1. Getting Started
2. Project Structure
3. State Management (BLoC Architecture)
4. Database and Backend (Supabase)
5. Offline Support (Powersync & Drift)
6. Contributing Guidelines
7. Contact / Further Info

---

## 1. Getting Started

### Prerequisites

- Flutter SDK (>=3.4.3 <4.0.0) see `pubspect.yaml` for version control
- A configured Supabase project (frontend credentials required)
- Powersync account (already configured)
- Basic familiarity with the BLoC architecture for Flutter
- **ANDROID**: Java 17 (>=17.0.0) ONLY

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/faustojc/ventrift.git
   ```

2. Navigate into the project directory:

   ```bash
   cd ventrift
   ```

3. Install Flutter dependencies:

   ```bash
   flutter pub get
   ```

4. Configure environment variables `.env` file for Supabase and Powersync keys
    - Create `.env` file at the project root.
    - Retrieve `.env` content from a project lead.
    - Fill in the missing keys with the retrieved contents:
      `SUPABASE_PROJECT_URL`,
      `SUPABASE_STORAGE_URL`,
      `SUPABASE_ANON_KEY`, 
      `POWERSYNC_ENDPOINT`.

5. Generate the env for the app to use by running the command in terminal:

   ```bash
   dart run build_runner build
   ```

6. Run the app on your preferred device/emulator:

   ```bash
   flutter run
   ```

---

## 2. Project Structure

The following folder layout is used to maintain clarity and consistency:

```
lib/
├── presentation/ ← UI widgets, screens, and pages
│ ├── components/
│ ├── pages/
│ ├── themes/ ← app theme e.g. color theme
│ ├── blocs/ ← BLoCs & Cubits for managing state
│ │ ├── my_feature_bloc.dart
│ │ ├── my_feature_event.dart
│ │ └── my_feature_state.dart
│ └── ...
│
├── domain/ ← Domain layer (backend logic, behind the scenes, etc.)
│ ├── exceptions/
│ ├── repositories/ ← Logic to fetch/store data from Supabase & Drift
│ ├── providers/
│ ├── routes/ ← MaterialRoute or PageRoute (list of routes)
│
├── data/ ← Data sources Database backend and schema
│ ├── sources/
│ │ ├── database.g.dart ← Contains DAO and table definitions
│ └── tables/
│
├── services/ ← Services or integrations, etc.
├── utils/ ← Helpers, constants, utility classes, etc.
│
└── main.dart
```

Key points:
- blocs/ contains all BLoC and Cubit classes, organized by feature.
- data/ includes models, repositories (Supabase, offline, etc.), and local DB definitions.
- presentation/ is strictly for UI.
- Keep UI logic out of BLoC; **keep business logic away from UI.**

---

## 3. State Management (BLoC Architecture)

The BLoC architecture is used to separate the presentation side from business logic:

- Cubits and/or BLoCs handle the logic of fetching, updating, or processing data.
- The UI “listens” to changes in state and rebuilds appropriately.
- Events and States: BLoCs typically have dedicated event and state classes. Cubits typically manage
states alone.
- Repositories: BLoCs communicate with repositories, which interface with Supabase or Drift.

Example folder structure for a feature named "Auth":

```
lib/blocs/auth/
├── auth_bloc.dart
├── auth_event.dart
└── auth_state.dart
```

Please follow this pattern for each feature to keep the architecture consistent.

---

## 4. Database and Backend (Supabase)

Supabase is used as our main PostgreSQL backend:
- All environment variables (URL, keys) should be stored in `.env` or in the app config.
- Data access: Use repository classes in `lib/repositories/` to interact with database.
- Handle errors gracefully and emit the appropriate states in your BLoCs/Cubits.

For any schema changes or new endpoints, document them (we will implement it later) or in commit
messages.

---

## 5. Offline Support (Powersync & Drift)

- Drift is our ORM to manage local data storage.
- Powersync ensures local changes sync to Supabase when the device goes back online.
- Drift table definitions and DAOs located at `lib/data/sources/database.g.dart`.
- For each feature, outline how offline data updates the UI.
- If you modify local schemas, ensure they’re reflected in the Powersync configurations.
  Contact **(Fausto JC Boko)** before making any changes.

---

## 6. Contributing Guidelines

1. Branch Naming:
   - Use prefixes like `feature/` or `fix/`.
   - For example: `feature/user-profile`.

2. Pull Requests:
   - Create a PR to the main branch.
   - Tag at least one reviewer for approval.

3. Code Style:
   - Follow Dart/Flutter best practices.
   - Honor lint rules (check `analysis_options.yaml`).

4. Testing:
   - Write or update tests for new features, fixes, or modules.
   - Run tests with `flutter test`.

5. Commit Messages:
   - Keep them descriptive and concise.
   - Reference issues (e.g., `resolves #ID`) when applicable.

---

## 7. Contact / Further Info

For questions or discussions:

- Project Leads: Gabriel Lopez, Fausto JC Boko
- GitHub Wiki **(TBA)**: Detailed docs about setups, additional guidelines, or advanced info

Thank you for following these guidelines to keep our development process smooth and consistent!
