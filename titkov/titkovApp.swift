//
//  titkovApp.swift
//  titkov
//
//  Created by user225687 on 11/18/23.
//

import SwiftUI

@main
struct titkovApp: App {
    var scrum = UserScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ContentView(scrum: UserScrum.sampleData)
        }
    }
}
