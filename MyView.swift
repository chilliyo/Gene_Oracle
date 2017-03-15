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
            context.setStrokeColor(UIColor.red.cgColor)
            context.setFillColor(UIColor(red: 225/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0).cgColor)
            context.setLineDash(phase:0, lengths: [])
            
            
            context.setLineWidth(18)
            let bloodCell = CGRect(x: 20, y: 100, width: 60, height: 60)
            context.fillEllipse(in: bloodCell)
            context.strokeEllipse(in: bloodCell)

            
            
            
            // Drawing an arc
            context.setLineWidth(10)
            context.setStrokeColor(UIColor(red: 225/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0).cgColor)
            context.addArc(center: CGPoint(x: 6.5, y: 240.5),
                           radius: 62.5,
                           startAngle: 0,
                           endAngle: CGFloat(M_PI / 0.62),
                           clockwise: true)
            context.strokePath()

            
            context.setStrokeColor(UIColor.red.cgColor)
            
            context.addArc(center: CGPoint(x: 23, y: 230),
                           radius: 50,
                           startAngle: CGFloat(M_PI / 6.0),
                           endAngle: CGFloat(M_PI / 0.666),
                           clockwise: true)
            context.strokePath()
            
            context.setLineWidth(5)
            // Drawing an arc
            context.addArc(center: CGPoint(x: -10, y: 251),
                           radius: 75,
                           startAngle: CGFloat(0 * M_PI / 6.0),
                           endAngle: CGFloat(M_PI / 0.61),
                           clockwise: true)
            context.strokePath()
            
            // Drawing rectangles and squares
            context.setStrokeColor(UIColor.green.cgColor)
            context.setFillColor(UIColor.blue.cgColor)
            context.setLineWidth(2)
            
            context.setLineWidth(4)
            let rect5 = CGRect(x: 120, y: 400, width: 60, height: 60)
            context.fill(rect5)
            context.stroke(rect5)
            
            // Drawing path
            //context.setStrokeColor(UIColor.blue.cgColor)
            //context.setLineWidth(2)
            
            //context.move(to: CGPoint(x: 100, y: 250))
            //context.addLine(to: CGPoint(x: 150, y: 300))
            //context.addLine(to: CGPoint(x: 100, y: 350))
            //context.addLine(to: CGPoint(x: 50, y: 300))
            //context.closePath()
            //context.strokePath()
            
            
            
            
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
