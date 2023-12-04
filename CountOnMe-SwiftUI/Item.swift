//
//  Item.swift
//  CountOnMe-SwiftUI
//
//  Created by guill roy on 04/12/2023.
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
