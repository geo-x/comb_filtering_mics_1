//
//  ViewController.swift
//  CombFilter Mic1a
//
//  Created by george on 10/4/17.
//  Copyright © 2017 george. All rights reserved.
//

import Cocoa

var soundSourceLocation:CGPoint = CGPoint(x: 500, y: 500)

var mic1Coordinates:CGPoint = CGPoint(x: 900, y: 100)
var mic2Coordinates:CGPoint = CGPoint(x: 100, y: 100)

let mic1View = Microphone()
let mic2View =  Microphone()

let mic1Layer = CALayer()
let mic2Layer = CALayer()


class ViewController: NSViewController {
    
  
    
    
    
    
    override func viewWillAppear() {
        
        
        
        
        mic1View.frame = CGRect(x: 0, y: 0, width: 24, height: 80)
        mic1View.micReferencePosition = mic1Coordinates
        mic1View.frame.origin = mic1View.micReferencePosition
        mic1View.image = NSImage(named: "microphone_icon_24X80")
        self.view.addSubview(mic1View)
        
        mic2View.frame = CGRect(x: 0, y: 0, width: 24, height: 80)
        mic2View.micReferencePosition = mic2Coordinates
        mic2View.frame.origin = mic2View.micReferencePosition
        mic2View.image = NSImage(named: "microphone_icon_24X80")
        self.view.addSubview(mic2View)
        
        let mic1Layer = mic1View.layer
        mic1Layer?.anchorPoint = CGPoint(x: 0.5, y: 1) // layer position is anchor at view origin ..default anchor is 0.5, 0.5 (where top right is 1,1 bottom left 0,0)
        mic1Layer?.borderColor = NSColor.red.cgColor
        mic1Layer?.borderWidth = 1
        mic1Layer?.setAffineTransform(CGAffineTransform(rotationAngle: CGFloat(Int(0).degreesToRadians) ))
        
        let mic2Layer = mic2View.layer
        mic2Layer?.anchorPoint = CGPoint(x: 0.5, y: 1)
        mic2Layer?.borderColor = NSColor.green.cgColor
        mic2Layer?.borderWidth = 1
        mic2Layer?.setAffineTransform(CGAffineTransform(rotationAngle: CGFloat(Int(0).degreesToRadians) ))
        
        
        
        
        //mic1Layer?.position = CGPoint(x: mic1View.frame.origin.x + 40, y: mic1View.frame.origin.y + 40)
            
        

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
   
  
        
        // Do any additional setup after loading the view.
        
        Swift.print("mic1Layer anchor \(mic1Layer.anchorPoint)")
        
        
        
      
//        Swift.print("reference position \(mic1View.micReferencePosition)")
    
    
    
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
            
           
        }
    }


}

