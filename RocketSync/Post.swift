//
//  Item.swift
//  RocketSync
//
//  Created by Trey Eckenrod on 2/26/24.
//

import Foundation
import SwiftData

@Model
final class Post {
    var timestamp: Date
    var title: String
    
    init(timestamp: Date, title: String = "Default Title") {
        self.timestamp = timestamp
        self.title = title
    }
}
