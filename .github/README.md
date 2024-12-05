# Vital 🌱

Vital is a Flutter app designed to help you live a healthier, more balanced life. It combines recipes, fitness and exercise routines, and beauty and cosmetic tips—all in one place. Whether you're cooking up a healthy meal, finding new workout routines, or discovering skincare secrets, Vital has you covered!

## ⚠️ Disclaimer

**Warning:** This project is in its early stages. Use it at your own risk.

## 📱 Platforms

- Android 📱
- iOS 🍏

## 🛠️ To-Do

<details> <summary>Tap to expand</summary>

## **To-Do List** 🛠️

### **General Setup** 🌟

- [ ] Set up the Flutter project structure 🏗️
- [ ] Configure Firebase for:
  - [ ] Authentication 🔒
  - [ ] Cloud Storage ☁️
  - [ ] Firestore for database 🗂️
- [ ] Design the app's theme (light mode first, later add dark mode) 🎨
- [ ] Create a reusable UI component library (e.g., buttons, cards, lists) 🛠️

### **Recipes & Ingredients** 🍲

#### **UI/UX Design**

- [ ] Design the main recipe browsing page (with filters and search) 🔍
- [ ] Create recipe detail view 📝
- [ ] Build an "Ingredients Library" page showing nutritional info 🍎
- [ ] Design the "Favorites" and "Custom Meal Plan" screens ⭐

#### **Core Features**

- [ ] Build a recipe browsing system
  - [ ] Add sorting and filtering (e.g., by cuisine, diet type, difficulty)
- [ ] Implement a recipe detail page
  - [ ] Display steps, ingredients, and estimated cooking time
- [ ] Allow users to add recipes to "Favorites" ❤️
- [ ] Build a "Meal Planner" with calendar integration 📆
- [ ] Allow users to add custom recipes 🖊️
- [ ] Enable ingredient substitution suggestions (e.g., replace milk with almond milk)

### **Fitness & Exercise** 🏋️‍♀️

#### **UI/UX Design**

- [ ] Design the Fitness dashboard
  - [ ] Display goals, current progress, and recommended workouts
- [ ] Build a "Workout Routines" library 🗂️
- [ ] Design the "Exercise Tutorials" page with images/videos 🎥
- [ ] Create goal-setting and tracking views 🎯

#### **Core Features**

- [ ] Implement fitness goal tracking
  - [ ] Users set weight loss, muscle gain, or endurance goals
- [ ] Add pre-defined workout routines
  - [ ] Separate sections for strength, cardio, and flexibility
- [ ] Allow users to customize their own routines
- [ ] Build progress tracking for exercises (e.g., reps, sets, time) 📊
- [ ] Integrate tutorial videos or GIFs for workouts 🎬
- [ ] Build notifications for workout reminders 🔔

### **Beauty & Cosmetics** 💄

#### **UI/UX Design**

- [ ] Create a skincare dashboard with daily routines 🌿
- [ ] Design a "Tips & Tricks" section 🧴
- [ ] Build a product tracking feature for cosmetics 📦

#### **Core Features**

- [ ] Add personalized skincare routines
  - [ ] Enable users to input their skin type (oily, dry, combination)
- [ ] Create a library of DIY beauty treatments
  - [ ] Include haircare, facials, and natural remedies
- [ ] Allow users to save their favorite beauty tips
- [ ] Implement reminders for skincare or beauty routines 🕒
- [ ] Build a product tracking system for inventory management
  - [ ] Expiry alerts for products 🛑

### **Common Features Across Modules** 🔄

- [ ] Implement user authentication
  - [ ] Sign up and log in (email/password, social logins) 🔑
- [ ] Add data syncing for user preferences (Firebase) ☁️
- [ ] Create a "Profile" page for:
  - [ ] Viewing and updating goals
  - [ ] Managing saved data (favorites, plans, routines)
- [ ] Implement a search system for Recipes, Exercises, and Beauty Tips 🔍
- [ ] Add sharing options for recipes, routines, and beauty tips 📤

### **Enhancements** ✨

- [ ] Implement offline mode for accessing saved data 📶
- [ ] Add a chatbot for fitness or beauty-related questions 🤖
- [ ] Gamify the app:
  - [ ] Add achievements and badges for milestones 🎖️
  - [ ] Create streak tracking for workout or beauty routines 🔥
- [ ] Integrate wearable device support (e.g., Fitbit, Apple Watch) ⌚
- [ ] Add multilingual support 🌐

### **Testing and Optimization** 🔬

- [ ] Write unit tests for key functionalities ✔️
- [ ] Test cross-platform compatibility (Android/iOS) 📱
- [ ] Optimize app performance and memory usage 🚀

### **Launch Preparation** 🚀

- [ ] Create an onboarding flow for new users 🎉
- [ ] Publish the app on:
  - [ ] Google Play Store
  - [ ] Apple App Store

</details>

## 🎯 Features

### 🍲 **Recipes & Ingredients**

- Browse a variety of healthy recipes for every meal of the day
- Explore ingredients with nutritional information and benefits
- Filter recipes based on dietary needs (e.g., vegan, gluten-free, low-carb)
- Save your favorite recipes and create custom meal plans

### 🏋️‍♀️ **Fitness & Exercise**

- Track your workouts with detailed routines for strength, cardio, and flexibility
- Set fitness goals and monitor your progress
- Access exercise tutorials with step-by-step instructions and images
- Create custom workout plans based on your goals and fitness level

### 💄 **Beauty & Cosmetics**

- Discover skincare routines tailored to your skin type and goals
- Explore beauty tips and tricks for makeup, hair, and skincare
- Learn about natural beauty products and DIY treatments
- Keep track of your beauty products and routines for a personalized experience

## 🖥️ Getting Started

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) installed on your machine.
- Knowledge of [Riverpod](https://riverpod.dev/) for state management.

### Installation

#### Install Visual Studio Code

Download and install Visual Studio Code from https://code.visualstudio.com/download.

#### Install Flutter

Download and install Flutter SDK from https://docs.flutter.dev/get-started/install. Once you have the SDK, refer to https://flutter-ko.dev/get-started/install/windows for a comprehensive installation guide on setting up Flutter and Dart. You can find the official installation guide on the Flutter website.

#### Run flutter doctor

Run flutter doctor in your terminal, once you have installed Flutter on your system, it will automatically check for the necessary system requirements to run the program. These requirements may include the Android toolchain, Chrome, Visual Studio, and Android Studio.

#### Install Chrome

Download and install Chrome form https://www.google.com/chrome/browser-tools/. Chrome is the default web browser utilized by Flutter when running the app.

#### Install Visual Studio

Download and install Visual Studio from https://visualstudio.microsoft.com/downloads/.

#### Install Android Studio

Download and install Android Studio from https://developer.android.com/studio.

#### Install Android toolchain

To install Android toolchain, these steps need to be followed:

1. Open Android Studio
2. In the Menu bar, click Tools
3. choose SDK Tools panel
4. Tick Android SDK Command-line Tools
5. Click Apply at bottom of the window

#### Clone git repository

After installing all the required software and tools, run flutter doctor again to validate.
Once you have done that, open a terminal and clone the project's Git repository using git clone https://github.com/zz0-0/vital.git

```bash
git clone https://github.com/zz0-0/vital.git
cd vital
```

#### Get flutter packages

Use Visual Studio Code to open the project and then run in the terminal: flutter pub get, to get all the required flutter packages.

```bash
flutter pub get
```

#### Run

##### Run on android

To run the app, you can navigate to the main.dart file located under the lib directory. There are two methods to run the app. First, you can go to the bottom right corner of Visual Studio Code, click on No device and select Start Flutter Emulator. Then, locate the button group of Run, Debug, and Profile just above the main method. Clicking on Run will run the app. Alternatively, you can still be on the main.dart file and go to the top right corner of Visual Studio Code, where you'll find a button labeled Start Debugging. Click on the dropdown and select Run without Debugging.

##### Run on desktop

```bash
flutter run
```

or

Locate the button group of Run, Debug, and Profile just above the main method. Clicking on Run will run the app.

## 🤝 Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your_feature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/your_feature`).
5. Open a pull request.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](../LICENSE) file for details.

## 📬 Contact

Feel free to reach out via [email](mailto:zz11009988@outlook.com) for any questions or feedback.
