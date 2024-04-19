//
//  StorageCapacityCalculatable.swift
//  CloudVue
//
//  Created by Roy's MacBook M1 on 19/04/2024.
//

import Foundation

/// Represents the capability to calculate storage capacity and trim percentage.
protocol StorageCapacityCalculatable {
    /// The maximum capacity of the storage.
    var maxCapacity: Int { get }
    
    /// The current amount of used space.
    var usedSpace: Int { get set }
}
