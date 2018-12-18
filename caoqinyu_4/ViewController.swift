//
//  ViewController.swift
//  caoqinyu_4
//
//  Created by student on 2018/11/24.
//  Copyright © 2018年 2016110302. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var label:UILabel!
    var btn:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //自定制视图
        //绘制椭圆
        let view1=MyView(frame:(CGRect(x: 100, y: 100, width: 150, height: 100)))
        view1.backgroundColor=UIColor.clear
        self.view.addSubview(view1)
        //绘制圆形
        let view2=MyView(frame: CGRect(x: 100, y: 300, width: 100, height: 100))
        view2.backgroundColor=UIColor.clear
        self.view.addSubview(view2)
        
        label=UILabel(frame: CGRect(x: 100, y: 200, width: 200, height: 44))
        label.text="hello world"
        label.font=UIFont.systemFont(ofSize: 22)
        label.textColor=UIColor.black
        self.view.addSubview(label)
        
        btn=UIButton(frame: CGRect(x: 100, y: 400, width: 100, height: 37))
        btn.setTitle("click", for: .normal)
        btn.backgroundColor=UIColor.red
        btn.setTitleColor(UIColor.black, for: .highlighted)
        self.view.addSubview(btn)
        btn.addTarget(self, action: #selector(clicked), for: .touchUpInside)
        
        
    }

    @IBAction func clicked(_ sender: Any) {
        if label.text!=="clicked" {
            label.text="hello world"
            btn.setTitle("clicked", for: .normal)
        }else{
            label.text="clicked"
            btn.setTitle("hello,cqy", for: .normal)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

