//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Md. Masud Rana on 2/8/23.
//

import SwiftUI

@main
struct BookwormApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            HomeScreen()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
