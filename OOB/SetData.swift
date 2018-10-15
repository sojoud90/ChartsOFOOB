//
//  SetData.swift
//  OOBComponents
//
//  Created by Blessed Tree IT on 9/4/18.
//  Copyright © 2018 BTIT. All rights reserved.
//

import UIKit

import Charts
class SetData: NSObject {
   
    //Linechart
    
    class func DrawLinechartData (values : [Double] , labels : [String] ,ColorS : [String] , view : UIView) -> UIView {
        var colorsArr         = [NSUIColor]()
        var entriesData         = [ChartDataEntry]()
       
        for i in  0..<values.count {
            
            colorsArr.append(ChartColorTemplates.colorFromString(ColorS[i]))
            entriesData.append(PieChartDataEntry(value: values[i], data: labels[i] as AnyObject))
        }

        let set1 = LineChartDataSet(values: entriesData, label: "DataSet 1")
        set1.colors = colorsArr
        let data = LineChartData(dataSet: set1)
        
        let chartView = LineChartView.init(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        chartView.data = data
        return chartView
    }
    
    

    
    //Piechart
    
    
    
    class func  DrawPiechartData(values : [Double] , labels : [String] ,ColorS : [String] , view : UIView) -> UIView {
        
        
        
        var colorsArr         = [NSUIColor]()
        var entriesData         = [ChartDataEntry]()
        
        for i in  0..<values.count {
            
            colorsArr.append(ChartColorTemplates.colorFromString(ColorS[i]))
            entriesData.append(PieChartDataEntry(value: values[i], data: labels[i] as AnyObject))
        }
        let chartView = PieChartView.init(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        
        
     
        let set = PieChartDataSet(values: entriesData, label: "Election Results")
        
        set.colors = colorsArr
        
        let data = PieChartData(dataSet: set)
       
        chartView.data = data
        return chartView
        
        
    }
    
    
    //Circl chart
    class func  DrawCirclChartData(values : [Double] , labels : [String] ,ColorS : [String]  , view : UIView) -> UIView {
        
        var colorsArr         = [NSUIColor]()
        var entriesData         = [ChartDataEntry]()
        
        for i in  0..<values.count {
            
            colorsArr.append(ChartColorTemplates.colorFromString(ColorS[i]))
            entriesData.append(PieChartDataEntry(value: values[i], data: labels[i] as AnyObject))
        }
        let chartView = PieChartView.init(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        
        
        
        let set = PieChartDataSet(values: entriesData, label: "Election Results")
        
        set.colors = colorsArr
        
        let data = PieChartData(dataSet: set)
        chartView.holeRadiusPercent = 0
        chartView.drawHoleEnabled = false
        chartView.holeColor = UIColor.clear
        chartView.data = data
        return chartView
        
        
    }
    
    
    
    // Gauge
    class func DrawGaugeChart(values : [Double] , labels : [String] ,ColorS : [String] , view : UIView) -> UIView {
        
        
        
        
        var colorsArr         = [NSUIColor]()
        var entriesData         = [ChartDataEntry]()
        
        for i in  0..<values.count {
            
            colorsArr.append(ChartColorTemplates.colorFromString(ColorS[i]))
            entriesData.append(PieChartDataEntry(value: values[i], data: labels[i] as AnyObject))
        }
        let set = PieChartDataSet(values: entriesData, label: "Election Results")
        
        set.colors = colorsArr
        
        let data = PieChartData(dataSet: set)
        
         let chartView = PieChartView.init(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        chartView.maxAngle = 180
        chartView.rotationAngle = 180
        chartView.centerTextOffset = CGPoint(x: 0, y: -20)
        chartView.rotationEnabled = false
        chartView.highlightPerTapEnabled = true
        
        chartView.data = data
        
          return chartView
    }
    
    //BarChartDataEntry
    
    
    class func  DrawBarChartData(xvalues : [Double] ,yvalues : [Double], labels : [String] ,ColorS : [String], view : UIView) -> UIView {
    
    
        var colorsArr         = [NSUIColor]()
        var entriesData         = [ChartDataEntry]()
        
        for i in  0..<xvalues.count {
            
            colorsArr.append(ChartColorTemplates.colorFromString(ColorS[i]))
            entriesData.append(BarChartDataEntry(x: xvalues[i], y: yvalues[i], data: labels[i] as AnyObject))
        }
    
        let set = BarChartDataSet(values: entriesData, label: "Election Results")
        
        set.colors = colorsArr
        
        let data = BarChartData(dataSet: set)
        
          let chartView = BarChartView.init(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        chartView.data = data
        return chartView
        
        
    }
}
