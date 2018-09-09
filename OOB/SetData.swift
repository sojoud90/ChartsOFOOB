//
//  SetData.swift
//  OOBComponents
//
//  Created by Blessed Tree IT on 9/4/18.
//  Copyright © 2018 BTIT. All rights reserved.
//

import UIKit

import Charts
public class SetData {
    
    //Linechart
    
    //add charts
   class func DrawLinechartData(entriesData : [ChartDataEntry] , Colors : [NSUIColor] , view : UIView) -> UIView {
        let set1 = LineChartDataSet(values: entriesData, label: "DataSet 1")
        set1.colors = Colors
        let data = LineChartData(dataSet: set1)
    
     let chartView = LineChartView.init(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
       chartView.data = data
        return chartView
    }
    
    
    //Piechart
    
    
    
    class func  DrawPiechartData(entriesData : [PieChartDataEntry] , Colors : [NSUIColor] , view : UIView) -> UIView {
        
        let chartView = PieChartView.init(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        
        
     
        let set = PieChartDataSet(values: entriesData, label: "Election Results")
        
        set.colors = Colors
        
        let data = PieChartData(dataSet: set)
       
        chartView.data = data
        return chartView
        
        
    }
    
    
    //Circl chart
    class func  DrawCirclChartData(entriesData : [PieChartDataEntry] , Colors : [NSUIColor] , view : UIView) -> UIView {
        
        let chartView = PieChartView.init(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        
        
        
        let set = PieChartDataSet(values: entriesData, label: "Election Results")
        
        set.colors = Colors
        
        let data = PieChartData(dataSet: set)
        chartView.holeRadiusPercent = 0
        chartView.drawHoleEnabled = false
        chartView.holeColor = UIColor.clear
        chartView.data = data
        return chartView
        
        
    }
    
    
    
    // Gauge
    class func DrawGaugeChart(entriesData : [PieChartDataEntry], Colors : [NSUIColor] , view : UIView) -> UIView {
        
        let set = PieChartDataSet(values: entriesData, label: "Election Results")
        
        set.colors = Colors
        
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
    class func  DrawBarChartData(entriesData : [BarChartDataEntry] , Colors : [NSUIColor], view : UIView) -> UIView {
        let set = BarChartDataSet(values: entriesData, label: "Election Results")
        
        set.colors = Colors
        
        let data = BarChartData(dataSet: set)
        
          let chartView = BarChartView.init(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        chartView.data = data
        return chartView
        
        
    }
}
