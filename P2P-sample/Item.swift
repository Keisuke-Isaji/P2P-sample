//
//  Item.swift
//  P2P-sample
//
//  Created by 伊佐治恵介 on 2024/06/18.
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
