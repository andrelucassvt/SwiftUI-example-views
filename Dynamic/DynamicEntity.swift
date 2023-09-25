//
//  DynamicEntity.swift
//  Views-example
//
//  Created by André  Lucas on 25/09/23.
//

import Foundation
import ActivityKit

struct DynamicEntity: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var value: Int
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}
