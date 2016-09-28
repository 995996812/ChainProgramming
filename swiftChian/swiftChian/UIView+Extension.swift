//
//  UIView+Extension.swift
//  swiftChian
//
//  Created by 王鹏华 on 16/9/27.
//  Copyright © 2016年 condentast. All rights reserved.
//

import Foundation
import SnapKit
//用协议做的类扩展
protocol chainHzlabel {
    
}

extension chainHzlabel where Self: UIView {
    
    func hzprotocol_cofing(_ cofig: (Self) -> Void) -> Self {
        cofig(self)
        
        return self
    }
}

extension UIView:  chainHzlabel{
    
    static func hzprotocol_creatWithSuperView(superView: UIView) -> Self{
        let resultView = self.init()
        
        superView.addSubview(resultView)
    
        return resultView;
    }
    
    func hzprotocol_addhere(toSuperView: UIView) -> Self {
        toSuperView.addSubview(self)
        return self;
    }
    
    func hzprotocol_layout(snapkitMaker: (ConstraintMaker) -> Void) -> Self {
        
        snp.makeConstraints { (make) in
            snapkitMaker(make)
        }
        return self
    }
}
