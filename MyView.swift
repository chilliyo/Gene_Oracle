//
//  MyView.swift
//  Carissa_Ward_and_Qili_Sui_Gene_Oracle
//
//  Created by Carissa Ward on 3/15/17.
//  Copyright © 2017 DePaul. All rights reserved.
//

import UIKit

class MyView: UIView {

    override func draw(_ rect: CGRect) {
        // Drawing code
        
        if let context = UIGraphicsGetCurrentContext() {
        
            
            // Drawing ovals and circles
            context.setStrokeColor(UIColor.blue.cgColor)
            context.setFillColor(UIColor.red.cgColor)
            context.setLineDash(phase:0, lengths: [])
            
            let rect1 = CGRect(x: 20, y: 100, width: 80, height: 60)
            context.strokeEllipse(in: rect1)
            
            context.setLineWidth(8)
            let rect2 = CGRect(x: 120, y: 100, width: 80, height: 60)
            context.fillEllipse(in: rect2)
            context.strokeEllipse(in: rect2)
            
            let rect3 = CGRect(x: 220, y: 100, width: 60, height: 60)
            context.fillEllipse(in: rect3)
            
            // Drawing rectangles and squares
            context.setStrokeColor(UIColor.green.cgColor)
            context.setFillColor(UIColor.blue.cgColor)
            context.setLineWidth(2)
            
            let rect4 = CGRect(x: 20, y: 180, width: 80, height: 60)
            context.stroke(rect4)
            
            context.setLineWidth(4)
            let rect5 = CGRect(x: 120, y: 180, width: 60, height: 60)
            context.fill(rect5)
            context.stroke(rect5)
            

            
            // Drawing path
            context.setStrokeColor(UIColor.blue.cgColor)
            context.setLineWidth(2)
            
            context.move(to: CGPoint(x: 100, y: 250))
            context.addLine(to: CGPoint(x: 150, y: 300))
            context.addLine(to: CGPoint(x: 100, y: 350))
            context.addLine(to: CGPoint(x: 50, y: 300))
            context.closePath()
            context.strokePath()
            
            // Drawing an arc
            context.addArc(center: CGPoint(x: 250, y: 300),
                           radius: 50,
                           startAngle: 0,
                           endAngle: CGFloat(M_PI),
                           clockwise: true)
            context.strokePath()
            
            
            // Drawing text
            let text =  "Hello Quartz 2D!"
            text.draw(at: CGPoint(x: 20, y: 540), withAttributes: nil) // top-left of text
            
            let textAttr = [
                NSForegroundColorAttributeName : UIColor.magenta,
                NSFontAttributeName : UIFont(name: "Papyrus", size: 24)!
            ]
            text.draw(at: CGPoint(x: 20, y: 560), withAttributes: textAttr)
        }
    }


}
