//
//  Countdown.swift
//  Countdown
//
//  Created by Victor  on 5/1/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation

class Countdown {
    
    init(duration: TimeInterval = 60) {
        self.duration = duration
        self.timeRemaining = duration
    }
    
    var timer: Timer?
    var startDate: Date?
    var stopDate: Date?
    var timeRemaining: TimeInterval
    var duration: TimeInterval
    
    
    func start(duration: TimeInterval) {
        self.duration = duration
        self.timeRemaining = duration
        
        stopDate = Date(timeIntervalSinceNow: duration)
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(update(timer:)), userInfo: nil, repeats: true)
        
    }
    
    func stop() {
        stopDate = nil
    }
    
    func reset() {
        stopDate = nil
    }
    
    @objc
    func update(timer: Timer) {
        
        if let stopDate = stopDate {
            let currentTime = Date()
            timeRemaining = stopDate.timeIntervalSince(currentTime)
        }
        print(timeRemaining)
    }
    
}
