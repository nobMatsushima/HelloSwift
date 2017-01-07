//
//  SwiftModel.swift
//  HelloSwift
//
//  Created by nob.matsushima on 2017/01/07.
//  Copyright © 2017年 nob.matsushima. All rights reserved.
//

import Foundation

class SwiftModel {
    private(set) var isSayingHello : Bool = false
    private(set) var isShowingBody : Bool = false
    
    func swichState() {
        isSayingHello = !isSayingHello
        isShowingBody = !isShowingBody
    }
}
