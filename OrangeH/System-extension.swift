//
//  System-extension.swift
//  OrangeH
//
//  Created by ZhaoQ on 2021/10/15.
//

import Foundation

import UIKit

//在SB中添加属性，用于设置view的圆角效果
extension UIView {
    //在SB属性检查器中增加属性.也可以使用关键字实时显示，但是比较耗资源，
    @IBInspectable
    //计算属性
    //注意在扩展系统类时，给里面的属性命名是不要与包中的扩展的属性同名
    //添加成功之后在属性检查器中会展示，首字母大写。每个view都会增加一个radius属性
    var radius: CGFloat{
        get{
            
            return layer.cornerRadius
        }
        
        set{
    
            clipsToBounds = true
            self.layer.cornerRadius = newValue
        }
        
    }
}
