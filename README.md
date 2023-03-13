# Maps App

Flutter training project for managing charging stations with maps

## Get Started

### 1. Fetch packages

```shell
flutter pub get
```

### 2. Run

```shell
flutter run --dart-define MAP_API_KEY=your_api_key_here --flavor=your_flavor_here
```


### 3. Update generated files

```shell
flutter pub run build_runner build --delete-conflicting-outputs
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
