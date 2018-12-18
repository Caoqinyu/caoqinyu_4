//
//  MyView.swift
//  caoqinyu_4
//
//  Created by student on 2018/11/24.
//  Copyright © 2018年 2016110302. All rights reserved.
//

import UIKit

class MyView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    //重写draw函数
    override func draw(_ rect: CGRect) {
        let path = UIBezierPath(ovalIn: rect)
        UIColor.black.setStroke()
        path.stroke()
        UIColor.purple.setFill()
        path.fill()
    }
}
