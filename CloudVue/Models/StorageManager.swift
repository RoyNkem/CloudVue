//
//  StorageManager.swift
//  CloudVue
//
//  Created by Roy's MacBook M1 on 19/04/2024.
//

import Foundation


// Singleton class to manage global instances of storage types
class StorageManager {
    static let shared = StorageManager()
    
    var storageTypes: [StorageCapacityCalculatable]
    
    var dropboxStorage: StorageType
    var icloudStorage: StorageType
    var googleDriveStorage: StorageType
    var oneDrive: StorageType
    
    private init() {
        // Initialize global instances of storage types
        dropboxStorage = StorageType(maxCapacity: 150, usedSpace: 54)
        icloudStorage = StorageType(maxCapacity: 150, usedSpace: 45)
        googleDriveStorage = StorageType(maxCapacity: 200, usedSpace: 90)
        oneDrive = StorageType(maxCapacity: 150, usedSpace: 60)
        
        storageTypes = [dropboxStorage, icloudStorage, googleDriveStorage, oneDrive]
    }
    
    /// Calculates the overall storage usage across all storage types managed by the `StorageManager`.
    ///
    /// - Returns: A tuple containing the overall storage usage percentage (as a Double), the total used space (as an Int), and the total max capacity (as an Int).
    func calculateOverallUsage() -> (percentage: Double, usedSpace: Int, totalMaxCapacity: Int) {
        let totalMaxCapacity = storageTypes.reduce(0) { $0 + $1.maxCapacity }
        let totalUsedSpace = storageTypes.reduce(0) { $0 + $1.usedSpace }
        
        guard totalMaxCapacity > 0 else {
            return (0.0, 0, 0) // Prevent division by zero
        }
        
        let overallPercentage = Double(totalUsedSpace) / Double(totalMaxCapacity)
        return (percentage: overallPercentage, usedSpace: totalUsedSpace, totalMaxCapacity: totalMaxCapacity)
    }
}
