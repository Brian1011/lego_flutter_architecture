# Ecommerce Project
This is an e-commerce project built with Flutter, utilizing a modular architecture with separate packages for authentication, products, and cart/checkout functionality. <br />
The project follows the MVC pattern with providers for state management, and uses Flutter Flow for navigation within packages and Go Router for overall app navigation. 
It also includes fake API calls with services.

## Project Structure

├── app/ <br />
│   └── main_app/ <br />
├── core/ <br />
├── feature/ <br />
│   ├── auth/ <br />
│   ├── products/ <br />
│   └── cart_checkout/ <br />

- `app/main_app`: The main Flutter application that ties everything together.
- `core`: Shared modules and utilities (if any).
- `feature`: Contains individual feature packages:
    - `auth`: Authentication package.
    - `products`: Products package.
    - `cart_checkout`: Cart and checkout package.

## Setup

1. Create the project directory:
   `mkdir ecommerce_project`
   `cd ecommerce_project`

2. Create subfolders:
   `mkdir -p app/main_app core feature/{auth,products,cart_checkout}`

3. Initialize the main app:
   `cd app/main_app`
   `flutter create .`
   `cd ../..`

4. Initialize the feature packages:
   `cd feature/auth`
   `flutter create .`

   `cd ../products`
   `flutter create .`

   `cd ../cart_checkout`
   `flutter create .`
   `cd ../..`

5. Set up dependencies in each package's `pubspec.yaml` file. Remember to assign package versions as any

## Development

To work on a specific feature package:

1. Navigate to the package directory:
   cd feature/auth

2. Run `flutter pub get` to fetch dependencies.

3. If using code generation (e.g., freezed, injectable), run the necessary commands:
   `flutter pub run build_runner build --delete-conflicting-outputs`

4. You can create a small test app within the feature package for isolated testing.

## Running the Project

1. Navigate to the `main_app` directory:
   `cd app/main_app`

2. Run `flutter pub get` to fetch dependencies.

3. Start the app:
   `flutter run`

## Melos with fvm
Melos will ensure all features have the same package version. [Read more about it here](https://melos.invertase.dev/~melos-latest/).

Here are some useful commands when using melos with fvm.

`melos clean --sdk-path .fvm/flutter_sdk` <br />
`melos bootstrap --sdk-path .fvm/flutter_sdk` <br />
`melos pub-run:all --sdk-path .fvm/flutter_sdk` <br />
