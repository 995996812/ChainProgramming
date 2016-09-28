//
//  ViewController.swift
//  swiftChian
//
//  Created by 王鹏华 on 16/9/26.
//  Copyright © 2016年 condentast. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let commonLabelCofig: (String?) ->((UILabel) -> Void) = { text in
            return { label in
                label.backgroundColor = .clear
                label.font = UIFont.systemFont(ofSize: 20)
                label.textColor = .red
                label.text = text
            }
        }
//        let firstLabel = UILabel()
//        
//        view.addSubview(firstLabel)
//        
//        firstLabel.snp.makeConstraints { (make) in
//            make.centerX.equalTo(view)
//            make.top.equalTo(view).offset(80)
//        }
//        firstLabel.text = "firstLabel"
//        firstLabel.backgroundColor = .clear
//        firstLabel.textColor = .red
//        firstLabel.font = UIFont.systemFont(ofSize: 20)
        
        let firstLabel = UILabel
        .hzclass_createWithSuperView(view: view)
        .hzclass_layout(view: view) { (make) in
            make.top.equalTo(view).offset(80)
        }
        .hzclass_cofing(labelBlock: commonLabelCofig("firstLabel"))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

