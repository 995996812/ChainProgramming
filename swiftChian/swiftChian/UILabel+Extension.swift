//
//  UILabel+Extension.swift
//  swiftChian
//
//  Created by 王鹏华 on 16/9/26.
//  Copyright © 2016年 condentast. All rights reserved.
//

import UIKit
import SnapKit

class BlockLabel: UILabel {
    
    
}

extension UILabel{
    static func hzclass_createWithSuperView(view: UIView) -> UILabel{
        
        let label: UILabel = BlockLabel()
        
        view.addSubview(label)
        
        return label;
    }
    
    func hzclass_cofing(labelBlock: (_ make: UILabel) -> Void) -> UILabel{
        
        if self is BlockLabel {
            labelBlock(self);
        }
        return self;
        
    }
    
    func hzclass_layout(view: UIView,layoutBlock: (_ make: ConstraintMaker) -> Void) -> UILabel{
        
        if self is BlockLabel {
            self.snp.makeConstraints({ (make) in
                make.centerX.equalTo(view);
                layoutBlock(make)
            })
        }
        return self;
    }
}
