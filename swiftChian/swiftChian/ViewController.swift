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
//         没有用链式编程创建的label
//                let firstLabel = UILabel()
//        
//                view.addSubview(firstLabel)
//        
//                firstLabel.snp.makeConstraints { (make) in
//                    make.centerX.equalTo(view)
//                    make.top.equalTo(view).offset(80)
//                }
//                firstLabel.text = "firstLabel"
//                firstLabel.backgroundColor = .clear
//                firstLabel.textColor = .red
//                firstLabel.font = UIFont.systemFont(ofSize: 20)
//        
//                let secondLabel = UILabel()
//        
//                view.addSubview(secondLabel)
//        
//                secondLabel.snp.makeConstraints { (make) in
//                    make.centerX.equalTo(view)
//                    make.top.equalTo(firstLabel.snp.bottom).offset(40)
//                }
//                secondLabel.text = "secondLabel"
//                secondLabel.backgroundColor = .clear
//                secondLabel.textColor = .red
//                secondLabel.font = UIFont.systemFont(ofSize: 20)
//        
//                let thirdLabel = UILabel()
//        
//                view.addSubview(thirdLabel)
//        
//                thirdLabel.snp.makeConstraints { (make) in
//                    make.centerX.equalTo(view)
//                    make.top.equalTo(secondLabel.snp.bottom).offset(40)
//                }
//                thirdLabel.text = "thirdLabel"
//                thirdLabel.backgroundColor = .clear
//                thirdLabel.textColor = .red
//                thirdLabel.font = UIFont.systemFont(ofSize: 20)
        
        
        // 用链式编程创建的label
        let firstLabel = UILabel
            .hzclass_createWithSuperView(view: view)
            .hzclass_layout(view: view) { (make) in
                make.top.equalTo(view).offset(80)
            }
            .hzclass_cofing(labelBlock: commonLabelCofig("firstLabel"))
        
        let secondLabel = UILabel
            .hzclass_createWithSuperView(view: view)
            .hzclass_layout(view: view) { (make) in
                make.top.equalTo(firstLabel.snp.bottom).offset(40)
            }
            .hzclass_cofing(labelBlock: commonLabelCofig("secondLabel"))
        
        let thirdLabel = UILabel
            .hzclass_createWithSuperView(view: view)
            .hzclass_layout(view: view) { (make) in
                make.top.equalTo(secondLabel.snp.bottom).offset(40)
            }
            .hzclass_cofing(labelBlock: commonLabelCofig("thirdLabel"))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

