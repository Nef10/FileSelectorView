# FileSelectorView

[![CI Status](https://github.com/Nef10/FileSelectorView/workflows/CI/badge.svg?event=push)](https://github.com/Nef10/FileSelectorView/actions?query=workflow%3A%22CI%22) [![Documentation percentage](https://nef10.github.io/FileSelectorView/badge.svg)](https://nef10.github.io/FileSelectorView/) [![License: MIT](https://img.shields.io/github/license/Nef10/FileSelectorView)](https://github.com/Nef10/FileSelectorView/blob/main/LICENSE) [![Latest version](https://img.shields.io/github/v/release/Nef10/FileSelectorView?label=SemVer&sort=semver)](https://github.com/Nef10/FileSelectorView/releases) ![platforms supported: macOS](https://img.shields.io/badge/platform-macOS-blue) ![SPM compatible](https://img.shields.io/badge/SPM-compatible-blue)

A small Swift UI Package with one View to select a file.

## Usage

Simple example:

```
@State private var fileURL: URL?
...
var body: some View {
    ...
    FileSelectorView(allowedFileTypes: ["txt", "md"], url: self.$fileURL)
    ...
}
```

With a label in the body:

```
var body: some View {
    ...
     HStack(alignment: .firstTextBaseline) {
        Text("Document:")
        FileSelectorView(allowedFileTypes: ["txt", "md"], url: self.$fileURL)
    }
    ...
}
```

Do disable a button (for example the continue button in a form) until a file is selected:
```
    Button("Continue") { ... }
    .disabled(fileURL == nil)
```

You can check out the complete documentation [here](https://nef10.github.io/FileSelectorView/).

## Screenshots

| No file selected | File selected | File selected with label |
|      :---:       |     :---:     |            :---:         |
| <img height="70" alt="Screen Shot 2020-07-13 at 18 58 30" src="https://user-images.githubusercontent.com/4551135/87371866-1d16d780-c53b-11ea-880a-a327ce5a8b34.png"> | <img height="70" alt="Screen Shot 2020-07-13 at 18 59 38" src="https://user-images.githubusercontent.com/4551135/87371872-1e480480-c53b-11ea-9ffe-1261b62a592a.png"> | <img height="70" alt="Screen Shot 2020-07-13 at 18 59 45" src="https://user-images.githubusercontent.com/4551135/87371874-1e480480-c53b-11ea-97cc-9d42bb36b8ea.png"> |

## Include

The library supports the Swift Package Manger, so simply add it to the Swift Packages tab of your Xcode project.
