# Pixel Cinema

## Overview

Welcome to the Pixel Cinema! This app provides a comprehensive experience for exploring featured movies. It uses TheMovieDB API to fetch and display movie information.

## Features

- **Movie List**: Displays a list of featured movies in theaters.
- **Movie Details**: When a movie is selected, detailed information about the movie is shown on a separate screen.
- **Load More**: As the user scrolls to the bottom of the movie list, more movies are automatically loaded.
- **Search**: Allows users to search for movies by title.
- **Trailer**: On the detail screen, an option to play the movie trailer is available.

## Requirements

- Dart
- Flutter - v3.24.1
- TheMovieDB API key (register at [TheMovieDB](https://www.themoviedb.org/) to get your API key)

## Installation

1. Clone the repository:

   ```sh
   git clone https://github.com/Penfore/pixel_cinema
   ```

2. Navigate into the project directory:

    ```sh
    cd pixel_cinema
    ```
3. Install dependencies:

    ```sh
    flutter pub get
    ```
4. Configure TheMovieDB API key:

    - Create and open .vscode/launch.json and add:
        - `{
    "configurations": [
        {
            "name": "Pixel Cinema",
            "request": "launch",
            "type": "dart",
            "toolArgs": [
                "--dart-define",
                "API_KEY=${YOUR-KEY}"
            ],
        }
    ]
}`

5. Run the app

    ```sh
    flutter run
    ```
