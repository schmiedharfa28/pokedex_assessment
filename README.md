# Pokemon Assessment
<div align="center" style='text-align : center;'>
  <img src="assets/img/poke-text.png" alt="pokemon-logo" width="225px"/>
  <br>
  <br>
  <i> "You Can't Expect To Win Every Single Battle..." </i>
  <br>
</div>

## System Requirement

**System Operations:** Windows

**Flutter:** 3.7.0

**JDK:** 17

## Development Setup

### Prerequisites
- [Visual Studio Code](https://code.visualstudio.com/download)
- [Flutter SDK](https://docs.flutter.dev/release/archive)
- [JDK Development Kit](https://www.oracle.com/id/java/technologies/downloads/#java17)
- [Android Studio](https://developer.android.com/studio)

### Setting Up a Project
<b>Clone the Project</b>

```bash
git clone https://github.com/schmiedharfa28/pokedex_assessment.git
```
<b>Configuration</b>

A. On Windows 

Following the instruction for set up Android Studio :
1. Open **Android Studio>Tools>SDK Manager>Android SDK>SDK Tools.**
2. Download **Android SDK Command-line Tools & Android SDK Build Tools 33.0.2.**
3. Run **flutter doctor --android-licenses**  to accept the SDK licenses.

Following the instruction for the local environment variable for JDK :
1. Create new System Variables **JAVA_HOME**.
2. Add in **JAVA_HOME**.
```
C:\Program Files\Java\jdk-17
```

Following the instruction for the local environment variable for Flutter :
1. Setting Up in path.
```
C:\Users\%USERPROFIL%\flutter\bin 
```
2. Run **flutter doctor** in command terminal. --> and then check whether there are still problems or not.

Following the instruction for set up Emulator Android (Device for the running project later) :
1. open android studio then click create device
2. select device definition then next
3. select the system image (Android 11.0 R) then next
4. verify the configuration (you can uncheck the device frame) and click finish.
5. You can choose the mobile emulator you need in visual studio code.

## Run Project
1. Open Project Pokemon App in Visual Studio Code.
2. Install Extensions related with Flutter.
```bash
3. flutter pub get
```
```bash
4. flutter run

```
5. There are 5 pages:
   1. Splash Screen
   2. Pokemon Generation Page
   3. Pokemon List
   4. Topic Detail Page
   5. Favorite Page
