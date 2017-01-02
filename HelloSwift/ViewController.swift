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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sayHelloButtonPushed(_ sender: UIButton) {
        sayHelloLabel.isHidden = !sayHelloLabel.isHidden
    }

}

