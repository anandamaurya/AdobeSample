//
//  Coordinator.swift
//  SafeShowings
//
//  Created by rohit sisodia on 31/07/19.
//  Copyright © 2019 Kiwitech. All rights reserved.
//

import Foundation
protocol Coordinator {
    /// Start the Coordinator means perform required navigation.
    func start()
    func stop()
}
extension Coordinator {
    func stop() {}
}
protocol StopableCoordinator {
    func stopCoordinator()
}
extension StopableCoordinator where Self: Coordinator {
    func stopCoordinator() {
        stop()
    }
}
