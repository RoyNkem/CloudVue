//
//  StorageType.swift
//  CloudVue
//
//  Created by Roy's MacBook M1 on 19/04/2024.
//

import Foundation

/// Represents a storage type with a maximum capacity and used space.
/// - Parameters:
///   - maxCapacity: The maximum capacity in GB.
///   - usedSpace: The initial used space in GB.
struct StorageType: StorageCapacityCalculatable {
    /// The maximum capacity of the storage type.
    let maxCapacity: Int
    
    /// The current amount of used space.
    var usedSpace: Int
    
    /// Initializes a new storage type with the given maximum capacity and used space.
    /// - Parameters:
    ///   - maxCapacity: The maximum capacity in GB.
    ///   - usedSpace: The initial used space in GB.
    init(maxCapacity: Int = 250, usedSpace: Int) {
        self.maxCapacity = maxCapacity
        self.usedSpace = usedSpace
    }
    
    /// Computes the trim percentage as a fraction (between 0 and 1) based on the current used space and maximum capacity.
    /// - Returns: The trim percentage as a fraction, or nil if the computation is invalid.
    func computeTrim() -> Double? {
        guard maxCapacity > 0 else {
            return nil
        }
        
        return Double(usedSpace) / Double(maxCapacity)
    }
    
    /// Computes the trim percentage as a percentage (between 0 and 100) based on the current used space and maximum capacity.
    /// - Returns: The trim percentage as a percentage value between 0 and 100, or nil if the computation is invalid.
    func computeTrimAsPercentage() -> Double? {
        guard let trim = computeTrim() else {
            return nil
        }
        
        return trim * 100
    }

}

