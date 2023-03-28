# Maps App

Flutter training project for managing charging stations with maps

[![Maintanence](https://img.shields.io/badge/Maintenance-yes%3F-blue.svg)]()
[![Ask Me Anything !](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)]()
![GitHub release](https://img.shields.io/badge/release-v1.0.0-blue)
![Supported Programs](https://img.shields.io/badge/Platform-Android%20|%20iOS%20|%20Web%20%20-blue.svg?logo=flutter)
[![View DEMO](https://img.shields.io/badge/VIEW-DEMO-lightgreen.svg)]()

## Project info 

- This project is an app that provides service for managing charging station with maps
- The app runs on Android, iOS and Web.
- The app is built using Flutter 3.3 and Dart.
- The app is built using the MVVM architecture.
- The app is built using the BLoC pattern.

## Get Started

### 1. Fetch packages

```shell
flutter pub get
```
### 2. Update generated files

#### 1. Update en.json and other json dictionaries under the assets/i18n folder

#### 2. Load assets:

```shell
flutter pub run easy_localization:generate --source-dir assets/i18n
```

#### 3. Generate static keys for translations

```shell
flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart --source-dir assets/i18n
```

#### 4. Generate boilerplate (Freezed, Mockito etc.)

```shell
flutter pub run build_runner build --delete-conflicting-outputs
```
### 3. Run

```shell
flutter run --dart-define MAP_API_KEY=your_api_key_here --flavor=your_flavor_here
```

## CREATE CREDENTIALS FILES FOR DEVELOPMENT AND PRODUCTION MODE

Create `config_dev.json` and `config_prod.json` inside the `assets` folder.
Do not add these files to GIT!
Files should have the following structure:

```json
{
  "appName": "",
  "apiDomain": "",
  "googleClientIdWeb": "",
}
```
Where:
- Value for `appName` should be according to your project
- Value for `apiDomain`, can be obtained on the backend
- Value for `googleClientIdWeb`, can be obtained on Firebase Console

## Run the app in development or production mode

App supports 2 flavors: `dev` and `prod`.


In order to run in production mode provide an additional `--flavor=prod` argument to the run
command:

```shell
flutter run --falvor=prod
```

Important! To create the production build of the app you should also provider an
additional `--flavor=prod` argument:

```shell
flutter build ipa --flavor=prod
```
