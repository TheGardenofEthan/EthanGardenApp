//
//  Item.swift
//  EthanGardenApp
//
//  Created by Ethan Garden on 2023-11-01.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
