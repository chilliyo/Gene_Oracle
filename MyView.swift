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
            //nebative
            let blueColor = UIColor(red: 140/255.0, green: 206/255.0, blue: 225/255.0, alpha: 1.0).cgColor
            //positive
            let greenColor = UIColor(red: 197/255.0, green: 225/255.0, blue: 169/255.0, alpha: 1.0).cgColor
            
            let darkRedColor = UIColor(red: 225/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1.0).cgColor
            
            let redColor = UIColor.red.cgColor
            
            
            
            
            
            // Drawing blood Cell
            context.setStrokeColor(redColor)
            context.setFillColor(darkRedColor)
            context.setLineDash(phase:0, lengths: [])
            
            context.setLineWidth(18)
            let bloodCell = CGRect(x: 40, y: 100, width: 60, height: 60)
            context.fillEllipse(in: bloodCell)
            context.strokeEllipse(in: bloodCell)

            
            
            
            // Drawing the Sickle Cell
            context.setLineWidth(10)
            
            context.setStrokeColor(darkRedColor)
            context.addArc(center: CGPoint(x: 26.5, y: 260.5),
                           radius: 62.5,
                           startAngle: 0,
                           endAngle: CGFloat(M_PI / 0.62),
                           clockwise: true)
            context.strokePath()

            context.setStrokeColor(redColor)
            context.addArc(center: CGPoint(x: 43, y: 250),
                           radius: 50,
                           startAngle: CGFloat(M_PI / 6.0),
                           endAngle: CGFloat(M_PI / 0.666),
                           clockwise: true)
            context.strokePath()
            
            context.setLineWidth(5)

            context.addArc(center: CGPoint(x: 10, y: 271),
                           radius: 75,
                           startAngle: CGFloat(0 * M_PI / 6.0),
                           endAngle: CGFloat(M_PI / 0.61),
                           clockwise: true)
            context.strokePath()
            
            
            
            context.setLineWidth(1)
            context.setStrokeColor(UIColor.black.cgColor)
            
            
            context.move(to: CGPoint(x: 50, y: 310)); context.addLine(to: CGPoint(x: 95, y: 310)); context.strokePath()
            context.move(to: CGPoint(x: 80, y: 310)); context.addLine(to: CGPoint(x: 80, y: 340)); context.strokePath()
            context.move(to: CGPoint(x: 20, y: 340)); context.addLine(to: CGPoint(x: 140, y: 340)); context.strokePath()
            context.move(to: CGPoint(x: 20, y: 340)); context.addLine(to: CGPoint(x: 20, y: 370)); context.strokePath()
            context.move(to: CGPoint(x: 60, y: 340)); context.addLine(to: CGPoint(x: 60, y: 370)); context.strokePath()
            context.move(to: CGPoint(x: 100, y: 340)); context.addLine(to: CGPoint(x: 100, y: 370)); context.strokePath()
            context.move(to: CGPoint(x: 140, y: 340)); context.addLine(to: CGPoint(x: 140, y: 370)); context.strokePath()

            
            context.move(to: CGPoint(x: 50, y: 430)); context.addLine(to: CGPoint(x: 95, y: 430)); context.strokePath()
            context.move(to: CGPoint(x: 80, y: 460)); context.addLine(to: CGPoint(x: 80, y: 430)); context.strokePath()
            context.move(to: CGPoint(x: 20, y: 460)); context.addLine(to: CGPoint(x: 140, y: 460)); context.strokePath()
            context.move(to: CGPoint(x: 20, y: 460)); context.addLine(to: CGPoint(x: 20, y: 490)); context.strokePath()
            context.move(to: CGPoint(x: 60, y: 460)); context.addLine(to: CGPoint(x: 60, y: 490)); context.strokePath()
            context.move(to: CGPoint(x: 100, y: 460)); context.addLine(to: CGPoint(x: 100, y: 490)); context.strokePath()
            context.move(to: CGPoint(x: 140, y: 460)); context.addLine(to: CGPoint(x: 140, y: 490)); context.strokePath()
            
            
            func createSquare(row: Int, column: Int, outside: CGColor, inside: CGColor){
                
                context.setStrokeColor(outside)
                context.setFillColor(inside)
                
                let square = CGRect(x: 10 + (40 * column), y: 300 + (60 * row), width: 20, height: 20)
                context.fill(square)
                context.stroke(square)
                
            }
            
            
            // Drawing Huntington's hereditary diagram
            
            context.setLineWidth(9)
            
            createSquare(row: 0, column: 1, outside: greenColor, inside:blueColor)
            createSquare(row: 0, column: 2, outside: blueColor, inside:blueColor)
            
            createSquare(row: 1, column: 0, outside: greenColor, inside:blueColor)
            createSquare(row: 1, column: 1, outside: blueColor, inside:blueColor)
            createSquare(row: 1, column: 2, outside: greenColor, inside:blueColor)
            createSquare(row: 1, column: 3, outside: blueColor, inside:blueColor)
            
            //Drawing Cystic Fibrosis hereditary diagram
            
            createSquare(row: 2, column: 1, outside: blueColor, inside:greenColor)
            createSquare(row: 2, column: 2, outside: blueColor, inside:greenColor)
            
            
            createSquare(row: 3, column: 0, outside: greenColor, inside:greenColor)
            createSquare(row: 3, column: 1, outside: blueColor, inside:greenColor)
            createSquare(row: 3, column: 2, outside: blueColor, inside:greenColor)
            createSquare(row: 3, column: 3, outside: blueColor, inside:blueColor)
            
            
        }
    }


}
