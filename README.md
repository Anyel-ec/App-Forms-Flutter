### Form in Flutter of New User with CUBIT
**Description:**
A Flutter project for managing user registration and counter functionalities using BLoC and Cubit.


## **Select Language:**
- [Español (Spanish)](README-es.md)
- [English](README.md)

## Result
### Home
![Alt text](docs/home.jpg) 
### New User with validation
![Alt text](docs/new_user.jpg) 
### New User Form
![Alt text](docs/new_user2.jpg) 
### Count with Cubit
![Alt text](docs/cubit.jpg) 
### Count with BloC
![Alt text](docs/bloc.jpg) 


**Project Structure:**
- `lib/`: Contains the main Dart code of the project.
  - `presentation/`: Contains the presentation layer code.
    - `blocs/`: Contains BLoC and Cubit implementations.
      - `counter_bloc/`: Implements counter functionality using BLoC pattern.
      - `register_cubit/`: Implements user registration functionality using Cubit pattern.
    - `widgets/`: Contains custom widgets used in the UI.
  - `infrastructure/`: Contains infrastructure-related code such as form inputs.
  - `main.dart`: Entry point of the application.
- `pubspec.yaml`: Contains project dependencies and metadata.


#### Getting Started

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/Anyel-ec/App-Forms-Flutter
   ```

2. **Navigate to Project Directory:**
   ```bash
   cd forms_app
   ```

3. **Install Dependencies:**
   ```bash
   flutter pub get
   ```

4. **Run the Application:**
   ```bash
   flutter run
   ```

---

### User Registration

**Features:**
- Allows users to register with a username, email, and password.
- Validates user inputs for username, email, and password.
- Displays error messages for invalid inputs.
- Saves user registration details.

**Implementation:**
- Implemented using Flutter with Cubit pattern for state management.
- Utilizes `flutter_bloc` and `formz` packages for managing state and form inputs.

---

### Counter Functionality

**Features:**
- Allows users to increment the counter by 1, 2, or 3.
- Resets the counter to zero.
- Displays the current counter value.

**Implementation:**
- Implemented using Flutter with BLoC pattern for state management.
- Utilizes `flutter_bloc` for managing state and event handling.

---

#### Note
Ensure that you have the necessary Flutter environment set up and dependencies installed before running the application. Refer to the Flutter documentation for detailed instructions on setting up your development environment.
