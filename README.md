# 🛒 E-Commerce App

A modern **E-Commerce mobile application** built with **Flutter & Dart**, following **Clean Architecture** principles and using **BLoC** for state management.

The application integrates with a REST API to retrieve and update data and uses **GoRouter** for navigation.

---

## 📱 Features

### 🚀 Custom Splash Screen

* Custom-designed splash screen
* Uses `Future.delayed` to control the splash duration
* Checks the user's authentication state
* Uses **GoRouter** for navigation
* Navigates to the application's **MainLayout** after the splash screen

### 🔐 Authentication

* User Login
* User Registration
* Authentication validation
* API integration
* Loading states
* Error handling
* Authentication state management using BLoC

### 🏠 Home

* Display products
* Display product categories
* Featured products
* Fetch data from API
* Navigate to product details
* Loading and error states

### 🛍️ Products

* Display products from REST API
* Product details
* Get product data from API
* Update product data through API
* Search products
* Filter products
* Loading and error handling

### 🛒 Cart

* Add products to cart
* Remove products from cart
* Update product quantity
* Calculate total price
* Display cart items
* Manage cart state using BLoC

### 👤 Profile

* Display user information
* Get user data from API
* Update profile information
* Update user data through API
* Logout

---

# 🏗️ Architecture

This project follows **Clean Architecture** with a **Feature-Based Structure**.

The architecture is designed to make the application:

* Scalable
* Maintainable
* Testable
* Easy to understand
* Easy to extend

The application is divided into three main layers:

```text
┌─────────────────────────┐
│      Presentation       │
│       BLoC + UI         │
└────────────┬────────────┘
             ↓
┌─────────────────────────┐
│         Domain          │
│ Use Cases + Entities    │
│      + Repository       │
└────────────┬────────────┘
             ↓
┌─────────────────────────┐
│          Data           │
│ Models + API + Repo     │
└─────────────────────────┘
```

---

# 📂 Project Structure

```text
lib/
│
├── core/
│   ├── api/
│   ├── errors/
│   ├── network/
│   ├── router/
│   ├── constants/
│   ├── utils/
│   └── widgets/
│
├── features/
│   │
│   ├── splash/
│   │   └── presentation/
│   │
│   ├── auth/
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   │
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   │
│   │   └── presentation/
│   │       ├── bloc/
│   │       ├── pages/
│   │       └── widgets/
│   │
│   ├── home/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │
│   ├── product/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │
│   ├── cart/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   │
│   └── profile/
│       ├── data/
│       ├── domain/
│       └── presentation/
│
└── main.dart
```

---

# 🧠 State Management

The application uses **BLoC** for state management.

BLoC separates business logic from the UI and provides predictable state changes.

The general flow is:

```text
User Interaction
       ↓
     Event
       ↓
      BLoC
       ↓
    Use Case
       ↓
   Repository
       ↓
  Data Source
       ↓
      API
       ↓
    Response
       ↓
      BLoC
       ↓
      State
       ↓
       UI
```

Typical states include:

```text
Initial
Loading
Success
Failure
```

---

# 🌐 REST API Integration

The application communicates with a REST API to retrieve and update application data.

### API Operations

```text
GET
↓
Retrieve data

POST
↓
Create data

PUT / PATCH
↓
Update data

DELETE
↓
Delete data
```

API communication is separated from the UI through the **Repository Pattern**.

```text
Presentation
     ↓
    BLoC
     ↓
  Use Case
     ↓
 Repository
     ↓
Remote Data Source
     ↓
   REST API
```

---

# 🔐 Authentication Flow

The authentication flow starts from the custom splash screen.

```text
             Splash Screen
                   ↓
             Future.delayed
                   ↓
        Check Authentication
                   ↓
              GoRouter
                   ↓
              MainLayout
```

The splash screen uses `Future.delayed` to control the splash duration.

After the delay, **GoRouter** handles navigation to the application's `MainLayout`.

---

# 🚀 Splash Screen

The application starts with a custom splash screen.

The splash screen uses:

```dart
Future.delayed()
```

to keep the splash screen visible for a specific duration.

After the delay, **GoRouter** is used to navigate to the `MainLayout`.

### Splash Flow

```text
Application Start
       ↓
Splash Screen
       ↓
Future.delayed
       ↓
Authentication Check
       ↓
GoRouter
       ↓
MainLayout
```

---

# 🧭 Navigation

The application uses **GoRouter** for navigation.

The main application navigation is organized around `MainLayout`.

Example routes:

```text
/splash
/login
/register
/main-layout
/product/:id
```

The `MainLayout` contains the main sections of the application:

```text
MainLayout
│
├── 🏠 Home
│
├── 🛍️ Products
│
├── 🛒 Cart
│
└── 👤 Profile
```

GoRouter is responsible for navigating between the application's screens and features.

---

# 🏠 MainLayout

`MainLayout` acts as the main container for the application's primary features.

```text
                 MainLayout
                     │
        ┌────────────┼────────────┐
        ↓            ↓            ↓
      Home        Products       Cart
                     │
                     ↓
                  Profile
```

The user can navigate between the main application sections from the `MainLayout`.

---

# 🛍️ Product Flow

Products are retrieved from the REST API.

```text
Product Screen
      ↓
  Product BLoC
      ↓
Get Products Use Case
      ↓
Product Repository
      ↓
Remote Data Source
      ↓
     REST API
      ↓
 Product Response
      ↓
     Product BLoC
      ↓
      UI
```

Product information can also be updated through the API.

---

# 🛒 Cart Flow

The cart allows users to manage their selected products.

```text
Product Details
      ↓
 Add To Cart
      ↓
   Cart BLoC
      ↓
  Cart State
      ↓
  Cart Screen
      ↓
Calculate Total
```

### Cart Operations

* Add product
* Remove product
* Increase quantity
* Decrease quantity
* Calculate total price
* Display cart items

---

# 👤 Profile Flow

The profile feature communicates with the API to retrieve and update user information.

```text
Profile Screen
      ↓
 Profile BLoC
      ↓
 Get / Update Use Case
      ↓
 Profile Repository
      ↓
 Remote Data Source
      ↓
     REST API
```

### Profile Operations

* Get user information
* Display user information
* Update user information
* Logout

---

# 🛠️ Technologies & Packages

| Technology             | Usage                        |
| ---------------------- | ---------------------------- |
| **Flutter**            | Mobile Application Framework |
| **Dart**               | Programming Language         |
| **BLoC**               | State Management             |
| **GoRouter**           | Navigation                   |
| **REST API**           | Backend Communication        |
| **Dio / HTTP**         | HTTP Requests                |
| **Equatable**          | State & Event Comparison     |
| **Clean Architecture** | Application Architecture     |

---

# ✨ Key Highlights

* ✅ Flutter & Dart
* ✅ Clean Architecture
* ✅ Feature-Based Architecture
* ✅ BLoC State Management
* ✅ REST API Integration
* ✅ GET API Requests
* ✅ POST API Requests
* ✅ PUT / PATCH API Requests
* ✅ DELETE API Requests
* ✅ Custom Splash Screen
* ✅ `Future.delayed`
* ✅ Authentication
* ✅ Home
* ✅ Products
* ✅ Product Details
* ✅ Shopping Cart
* ✅ Profile
* ✅ MainLayout
* ✅ GoRouter Navigation
* ✅ Loading States
* ✅ Error Handling
* ✅ Repository Pattern
* ✅ Use Case Pattern
* ✅ Separation of Concerns
* ✅ Reusable Widgets
* ✅ Scalable Project Structure

---

# 📱 Application Screens

The application includes:

```text
🚀 Splash Screen

🔐 Authentication
   ├── Login
   └── Register

🏠 MainLayout
   ├── Home
   ├── Products
   ├── Cart
   └── Profile

🛍️ Product Details
```

---

# 🔄 Overall Application Flow

```text
                    ┌──────────────┐
                    │    Splash    │
                    └──────┬───────┘
                           ↓
                    Future.delayed
                           ↓
                  Authentication Check
                           ↓
                       GoRouter
                           ↓
                    ┌──────────────┐
                    │  MainLayout  │
                    └──────┬───────┘
                           ↓
          ┌────────────────┼────────────────┐
          ↓                ↓                ↓
        Home           Products            Cart
                           │
                           ↓
                    Product Details

                           │
                           ↓
                        Profile
```

---

# 🚀 Getting Started

## 1. Clone the Repository

```bash
git clone https://github.com/your-username/ecommerce-flutter.git
```

## 2. Navigate to the Project

```bash
cd ecommerce-flutter
```

## 3. Install Dependencies

```bash
flutter pub get
```

## 4. Run the Application

```bash
flutter run
```

---

# 🔧 Requirements

Before running the project, make sure you have:

* Flutter SDK
* Dart SDK
* Android Studio or VS Code
* Android Emulator or Physical Android/iOS Device
* Internet connection for API communication

Check your Flutter installation:

```bash
flutter doctor
```

---

# 📌 Development Principles

### Clean Code

Writing readable, maintainable, and reusable code.

### Separation of Concerns

Each layer has a specific responsibility.

### Repository Pattern

Abstracts data access from the domain layer.

### Use Case Pattern

Encapsulates individual business operations.

### BLoC Pattern

Separates business logic from the presentation layer.

### Dependency Inversion

Higher-level business logic does not depend directly on external data sources.

---

# 🎯 Project Goals

The main goal of this project is to demonstrate how to build a scalable E-Commerce application using professional Flutter development practices.

The project demonstrates experience with:

* Flutter development
* Dart
* Clean Architecture
* BLoC
* REST APIs
* API integration
* Repository Pattern
* Use Cases
* GoRouter
* Authentication
* Product management
* Shopping cart
* Profile management
* MainLayout navigation
* Error handling
* Feature-based architecture

---

# 👨‍💻 Developer

## Tarek Moawad

**Flutter Developer**

Passionate about building modern, scalable, and maintainable mobile applications using **Flutter & Dart**.

---

# 📄 License

This project is created for **educational and portfolio purposes**.
