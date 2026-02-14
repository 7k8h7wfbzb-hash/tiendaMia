//
//  Item.swift
//  tienda
//
//  Created by Kleber Oswaldo Muy landi on 14/2/26.
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
