//
//  NotesApp.swift
//  Notes WatchKit Extension
//
//  Created by pbuscano on 4/12/22.
//

import SwiftUI

@main
struct NotesApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
