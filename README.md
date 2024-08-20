# Flutter GitHub Trend
Flutter GitHub Trend is a new Flutter project designed to showcase the latest trending repositories on GitHub.

Demo Video : https://youtu.be/Vlxnp_n3hdc

## Features

- Trending Repositories
- Repository Details
- Filter by Stars
- Filter by Name

## Screenshot

<table>
  <tr>
     <td>Home</td>
     <td>Filter</td>
     <td>Detail</td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/89d54623-cc11-4612-acfd-58a4a27beddd" width=280 ></td>
    <td><img src="https://github.com/user-attachments/assets/7b55f6b0-d560-4fae-9d13-ce6242fea294" width=280 ></td>
    <td><img src="https://github.com/user-attachments/assets/fdb4ca5b-e759-4a3f-b4e3-713f1e2daaee" width=280 ></td>
  </tr>
</table>

### How to Use the Repository!

1. **Clone the Repository**
   - Open your terminal or command prompt.
   - Run the following command to clone the repository:
     ```sh
     git clone https://github.com/rahdeva/flutter_github_trend
     ```
   - Navigate to the project directory:
     ```sh
     cd flutter_github_trend
     ```

2. **Ensure You Have the Latest IDE**
   - Make sure you're using the latest version of Android Studio or VSCode for the best development experience.

3. **Install FVM (Flutter Version Manager)**
   - FVM helps you manage Flutter SDK versions efficiently and avoids conflicts.
   - Install FVM by running the following command:
     ```sh
     dart pub global activate fvm
     ```
   - Once installed, use FVM to install the required Flutter version for this project:
     ```sh
     fvm install
     ```
   - Create an `.fvm` directory in your project to specify the Flutter version:
     ```sh
     fvm use <flutter-version>
     ```
   - Make sure to replace `<flutter-version>` with the required version specified in your project.

4. **Configure IDE to Use FVM**
   - For **VSCode**:
     - Install the **FVM** extension.
     - Open your project in VSCode.
     - Use the command palette (Ctrl+Shift+P) and select `FVM: Use` to set the Flutter SDK version for the project.

5. **Run the Project in Debug Mode**
   - After setting up FVM, run the project using the following command:
     ```sh
     fvm flutter run
     ```
