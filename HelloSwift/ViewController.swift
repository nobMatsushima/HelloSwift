//
//  ViewController.swift
//  HelloSwift
//
//  Created by nob.matsushima on 2017/01/01.
//  Copyright © 2017年 nob.matsushima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sayHelloLabel: UILabel!
    @IBOutlet weak var swiftImageView: UIImageView!

    var swiftModel: SwiftModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        swiftModel = SwiftModel()
        updateViews()
    }

    @IBAction func sayHelloButtonPushed(_ sender: UIButton) {
        swiftModel.swichState()
        updateViews()
    }
    
    func updateViews() {
        sayHelloLabel.isHidden = swiftModel.isSayingHello
        swiftImageView.isHidden = swiftModel.isShowingBody
    }
    
    // Ref: https://www.raywenderlich.com/76020/using-uigesturerecognizer-with-swift-tutorial_
    @IBAction func handlePan(recognizer:UIPanGestureRecognizer) {
        let translation = recognizer.translation(in:self.view)
        if let view = recognizer.view {
            view.center = CGPoint(x:view.center.x + translation.x,
                                  y:view.center.y + translation.y)
        }
        recognizer.setTranslation(CGPoint.zero, in: self.view)
    }

}

