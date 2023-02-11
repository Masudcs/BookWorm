//
//  DataController.swift
//  Bookworm
//
//  Created by Md. Masud Rana on 2/9/23.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "BookWorm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load:   \(error.localizedDescription)")
            }
        }
    }
}
