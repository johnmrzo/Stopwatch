//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Bakhtiyorjon Mirzajonov on 06/09/23.
//

import Foundation

class Stopwatch {
  
  private var startTime: NSDate?
  
  var isRunning: Bool {
          return startTime != nil
  }

  func start() {
  startTime = NSDate()
  }

  func stop() {
    startTime = nil
  }
  
  var elapsedTime: TimeInterval {
    if let startTime = self.startTime {
      return -1 * startTime.timeIntervalSinceNow // could also just say -startTime.timeIntervalSinceNow
    } else {
      return 0
    }
  }
  
  var elapsedTimeAsString: String {
    let elapsedTime = Int(self.elapsedTime)
    let minutes = (elapsedTime / 60) % 60
    let seconds = elapsedTime % 60
    let fraction = Int((self.elapsedTime.truncatingRemainder(dividingBy: 1)) * 10)
            
    return String(format: "%02d:%02d.%d", minutes, seconds, fraction)
  }
   
}
