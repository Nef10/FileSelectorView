# FileSelectorView

[![CI Status](https://github.com/Nef10/FileSelectorView/workflows/CI/badge.svg?event=push)](https://github.com/Nef10/FileSelectorView/actions?query=workflow%3A%22CI%22) [![Documentation percentage](https://nef10.github.io/FileSelectorView/badge.svg)](https://nef10.github.io/FileSelectorView/) [![License: MIT](https://img.shields.io/github/license/Nef10/FileSelectorView)](https://github.com/Nef10/FileSelectorView/blob/master/LICENSE) [![Latest version](https://img.shields.io/github/v/release/Nef10/FileSelectorView?label=SemVer&sort=semver)](https://github.com/Nef10/FileSelectorView/releases) ![platforms supported: macOS](https://img.shields.io/badge/platform-macOS-blue) ![SPM compatible](https://img.shields.io/badge/SPM-compatible-blue)

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
        Text("Text file:")
        FileSelectorView(allowedFileTypes: ["txt", "md"], url: self.$fileURL)
    }
    ...
}
```

You can check out the complete documentation [here](https://nef10.github.io/FileSelectorView/).

## Include

The library supports the Swift Package Manger, so simply add it to the Swift Packages tab of your Xcode project.
