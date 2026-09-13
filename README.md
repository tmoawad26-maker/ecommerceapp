# 🛒 E-Commerce App — Flutter

A modern **E-Commerce mobile application** built with **Flutter**, following **Clean Architecture** principles and using **BLoC** for state management.

The application communicates with a REST API to **get and update data**, with navigation handled using **GoRouter**.

---

## 📱 Features

### 🔐 Authentication

* User Login
* User Registration
* Authentication validation
* API integration
* Error and loading state handling

### 🏠 Home

* Display products and categories
* Fetch data from API
* Featured products
* Product navigation
* Loading and error states

### 🛍️ Products

* Display products from API
* Product details
* Get products from REST API
* Update product data through API
* Search/filter products
* Handle API loading and errors

### 🛒 Cart

* Add products to cart
* Remove products from cart
* Update product quantity
* Calculate total price
* Manage cart state using BLoC

### 👤 Profile

* Display user information
* Update profile information
* Get user data from API
* Update user data through API
* Logout

---

## 🏗️ Architecture

The project follows **Clean Architecture** to keep the code scalable, maintainable, and testable.

The application is divided into three main layers:

```text
Presentation
     ↓
Domain
     ↓
Data
```

### Presentation Layer

Responsible for the UI and application state.

```text
presentation/
├── pages/
├── widgets/
└── bloc/
```

Uses **BLoC / Cubit** to manage application states.

---

### Domain Layer

Contains the application's business logic and rules.

```text
domain/
├── entities/
├── repositories/
└── usecases/
```

The domain layer does not depend on Flutter UI or external data sources.

---

### Data Layer

Responsible for communicating with external APIs and handling data.

```text
data/
├── models/
├── datasources/
│   ├── remote/
│   └── local/
└── repositories/
```

The data layer handles:

* REST API requests
* JSON parsing
* Models
* Remote data sources
* Repository implementations

---

## 📂 Project Structure

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
│
│   ├── auth/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
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

## 🧠 State Management

The project uses **BLoC** as the main state-management solution.

BLoC separates business logic from the UI and provides clear application states.

Example:

```text
UI
 ↓
Event
 ↓
BLoC
 ↓
Use Case
 ↓
Repository
 ↓
API
```

Typical states include:

```text
Initial
Loading
Success
Error
```

---

## 🌐 API Integration

The application communicates with a REST API to retrieve and update application data.

API operations include:

* `GET` — Fetch data
* `POST` — Create data
* `PUT/PATCH` — Update data
* `DELETE` — Delete data

Example flow:

```text
Flutter UI
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

## 🧭 Navigation

The project uses **GoRouter** for application navigation.

Example routes:

```text
/login
/register
/home
/products
/product/:id
/cart
/profile
```

GoRouter provides:

* Declarative routing
* Named routes
* Route parameters
* Authentication redirects
* Nested navigation

---

## 🛠️ Technologies & Packages

| Technology         | Purpose                      |
| ------------------ | ---------------------------- |
| Flutter            | Mobile application framework |
| Dart               | Programming language         |
| BLoC               | State management             |
| GoRouter           | Navigation                   |
| REST API           | Backend communication        |
| Dio / HTTP         | API requests                 |
| Equatable          | State/event comparison       |
| JSON               | Data serialization           |
| Clean Architecture | Project architecture         |

---

## 🔄 Application Flow

### Authentication

```text
Login Screen
     ↓
Auth BLoC
     ↓
Login Use Case
     ↓
Auth Repository
     ↓
Remote Data Source
     ↓
REST API
     ↓
Response
     ↓
BLoC State
     ↓
Home Screen
```

### Products

```text
Products Screen
      ↓
Product BLoC
      ↓
Get Products Use Case
      ↓
Product Repository
      ↓
API
      ↓
Products Response
      ↓
Product BLoC
      ↓
Update UI
```

### Cart

```text
Product
   ↓
Add To Cart
   ↓
Cart BLoC
   ↓
Cart State
   ↓
Cart Screen
   ↓
Total Price
```

---

## ✨ Main Features

* ✅ Clean Architecture
* ✅ BLoC State Management
* ✅ REST API Integration
* ✅ GET API Requests
* ✅ POST API Requests
* ✅ UPDATE API Requests
* ✅ Authentication
* ✅ Product Management
* ✅ Shopping Cart
* ✅ User Profile
* ✅ GoRouter Navigation
* ✅ Loading States
* ✅ Error Handling
* ✅ Reusable Widgets
* ✅ Separation of Concerns
* ✅ Scalable Project Structure

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/your-username/ecommerce-flutter.git
```

### 2. Navigate to the project

```bash
cd ecommerce-flutter
```

### 3. Install dependencies

```bash
flutter pub get
```

### 4. Run the application

```bash
flutter run
```

---

## 🔧 Requirements

Before running the project, make sure you have:

* Flutter SDK
* Dart SDK
* Android Studio or VS Code
* Android Emulator or physical device
* Internet connection for API requests

Check your Flutter installation:

```bash
flutter doctor
```

---

## 📸 Screens

The application contains the following main screens:

```text
🔐 Authentication
    ├── Login
    └── Register

🏠 Home

🛍️ Products
    └── Product Details

🛒 Cart

👤 Profile
```

---

## 🎯 Project Goals

The main goal of this project is to build a scalable and maintainable E-Commerce application while applying professional Flutter development practices.

The project demonstrates:

* Clean Architecture
* SOLID principles
* BLoC state management
* API integration
* Repository pattern
* Separation of concerns
* Scalable feature-based structure
* Professional navigation with GoRouter

---

## 👨‍💻 Developer

**Tarek Moawad**

Flutter Developer

Focused on building modern, scalable, and maintainable mobile applications using Flutter and Dart.

---

## 📄 License

This project is available for educational and portfolio purposes.

