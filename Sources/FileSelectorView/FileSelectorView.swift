//
//  FileSelectorView.swift
//  FileSelectorView
//
//  Created by Steffen Kötte on 2020-03-29.
//  Copyright © 2020 Steffen Kötte. All rights reserved.
//

import SwiftUI

struct FileSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FileSelectorView(allowedFileTypes: ["txt"], url: .constant(nil))
            FileSelectorView(allowedFileTypes: ["txt"], url: .constant(URL(fileURLWithPath: "/Users/Guest/Test.txt")))
        }
    }
}

/// A view which allows the user to select a file
///
/// If a file is selected it shows the file name as well as a button to change the file.
/// If no file is selected, it shows a text asking the user to select a file, as well as a button.
public struct FileSelectorView: View {

    private let allowedFileTypes: [String]

    @Binding private var url: URL?

    /// the view
    public var body: some View {
        VStack(alignment: .leading) {
            if url != nil {
                Text(url!.lastPathComponent).fixedSize()
            } else {
                Text("Please select...").italic()
            }
            Button("Choose file") {
                self.selectFile()
            }
        }
    }

    /// Creates the view
    /// - Parameters:
    ///   - allowedFileTypes: Array of Strings with the allowed file types (e.g. txt) - Without leading dot
    ///   - url: Binding of the URL of the selected file
    public init(allowedFileTypes: [String], url: Binding<URL?>) {
        self.allowedFileTypes = allowedFileTypes
        self._url = url
    }

    private func selectFile() {
        let openPanel = NSOpenPanel()
        openPanel.canChooseDirectories = false
        openPanel.allowsMultipleSelection = false
        openPanel.allowedFileTypes = allowedFileTypes
        openPanel.begin { response in
            if response == .OK {
                self.url = openPanel.url
            }
        }
    }
}
