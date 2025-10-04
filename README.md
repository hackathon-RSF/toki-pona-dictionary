# Toki Pona Dictionary

A mobile dictionary for the Toki Pona language.

## Directory Tree

```bash
lib/
 ├── main.dart            // Entry point
 ├── app.dart             // MaterialApp, theme, routes (if any)
 ├── core/                // app-wide stuff
 │    ├── theme.dart      // colors, typography
 │    └── utils.dart      // helpers (string cleaning, etc.)
 ├── data/                
 │    ├── toki_pona.json  // static dictionary data
 │    └── dictionary_repo.dart // loads & provides words
 ├── models/              
 │    └── word.dart       // Word model (meaning, origin, image)
 ├── features/
 │    └── dictionary/
 │         ├── ui/        
 │         │    ├── dictionary_page.dart   // main screen
 │         │    ├── word_list.dart         // list of words
 │         │    └── word_detail.dart       // detail card/modal
 │         └── state/     
 │              └── dictionary_state.dart  // filtering, selected word
 └── shared/              
      └── widgets/        // reusable UI components (e.g. search bar, button styles)
```

## 🚀 Download it now

[![Download APK](https://img.shields.io/badge/Download-APK-blue?style=for-the-badge&logo=android)](https://github.com/<your-username>/<your-repo>/releases/latest/download/app-release.apk)
