# Maps App

Flutter training project for managing charging stations with maps

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
