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

}

