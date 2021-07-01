//
//  ViewController.swift
//  homework21
//
//  Created by Igor Naronovich on 30.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blueView1: roundView!
    @IBOutlet weak var blueView2: roundView!
    @IBOutlet weak var blueView3: roundView!
    @IBOutlet weak var blueView4: roundView!
    @IBOutlet weak var blueView5: roundView!
    @IBOutlet weak var blueView6: roundView!
    @IBOutlet weak var blueView7: roundView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func blueAction(_ gesture: UIPanGestureRecognizer) {
        
        let blueViewFrame1 = blueView1.frame
        let blueViewFrame2 = blueView2.frame
        let blueViewFrame3 = blueView3.frame
        let blueViewFrame4 = blueView4.frame
        let blueViewFrame5 = blueView5.frame
        let blueViewFrame6 = blueView6.frame
        let blueViewFrame7 = blueView7.frame
        
        let gestureTranslation = gesture.translation(in: view)
        
        guard let gestureView = gesture.view else {
            return
        }
        
        gestureView.center = CGPoint (
            x: gestureView.center.x + gestureTranslation.x,
            y: gestureView.center.y + gestureTranslation.y
        )
        
        gesture.setTranslation(.zero, in: view)
        
        guard gesture.state == .ended else {
            return
        }

        
        for value in Int(blueViewFrame2.minY)...Int(blueViewFrame2.maxY) {
            if Int(blueViewFrame1.origin.y) == value {
                blueView2.backgroundColor = .green
                blueView1.isHidden = true
                
            }
        }
        
    }
    
    
        

}

