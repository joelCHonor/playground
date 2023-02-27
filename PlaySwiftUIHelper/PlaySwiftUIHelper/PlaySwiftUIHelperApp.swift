//
//  PlaySwiftUIHelperApp.swift
//  PlaySwiftUIHelper
//
//  Created by Joel Chinchilla on 17/2/23.
//

import SwiftUI

let options: [CaptionOption] = [ CaptionOption(id: 1,
                                               name: "Off",
                                               detailLabel: "",
                                               isSelected: true,
                                               type: .off),
                                 CaptionOption(id: 2,
                                               name: "English",
                                               detailLabel: "Auto-generated subtitles",
                                               isSelected: false,
                                               type: .language(code: "end"))]

@main
struct PlaySwiftUIHelperApp: App {
    var body: some Scene {
        WindowGroup {
            CaptionsOptions(options: options)
        }
    }
}
