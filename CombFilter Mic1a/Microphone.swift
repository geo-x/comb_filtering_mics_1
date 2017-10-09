//
//  Microphone.swift
//  CombFilter Mic1a
//
//  Created by george on 10/4/17.
//  Copyright © 2017 george. All rights reserved.
//

import Cocoa

class Microphone: NSImageView {


    //properties
    var targetPoint:CGPoint = soundSourceLocation
    
    var micReferencePosition:CGPoint = CGPoint(x: 0, y: 0)
    
    
   
    
    
    
    
    
   
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        var distanceToSource = distanceBetween(point1:self.micReferencePosition, point2: self.targetPoint)
        Swift.print("distance to source \(distanceToSource)")
        Swift.print("reference position \(micReferencePosition)")
       
        
        
        
        
        // Drawing code here.
    }
    
}


func distanceBetween(point1:CGPoint, point2:CGPoint) -> CGFloat {
    return sqrt(pow((point2.x - point1.x), 2) + pow((point2.y - point1.y), 2))
}
