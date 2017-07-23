//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Ilya on 23.07.17.
//  Copyright © 2017 Your School. All rights reserved.
//

import Foundation

class Stopwatch {
        
    private var startTime: Date?
    
    var elapsedTime: TimeInterval {
        if let startTime = self.startTime {
            return -startTime.timeIntervalSinceNow
        } else {
            return 0
        }
    }
    
    var elapsedTimeAsString: String {
        return String(format: "%02d:%02d.%d",
        Int(elapsedTime / 60),
        Int(elapsedTime.truncatingRemainder(dividingBy: 60)),
        Int((elapsedTime * 10).truncatingRemainder(dividingBy: 10)))
    }
    
    var isRunning: Bool {
        return startTime != nil
    }
    
    func start() {
        startTime = NSDate() as Date
    }
    
    func stop() {
        startTime = nil
    }
}
