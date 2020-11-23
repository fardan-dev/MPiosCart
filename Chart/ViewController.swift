//
//  ViewController.swift
//  Chart
//
//  Created by Fardan on 21/11/20.
//  Copyright © 2020 Fardan. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {
    
    lazy var lineChartView: CandleStickChartView = {
        let chartView = CandleStickChartView()
        return chartView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lineChartView.frame = CGRect.init(x: 0, y: 0, width: view.frame.size.width, height: 500)
        lineChartView.legend.enabled = false
        view.addSubview(lineChartView)
        setDataChart()
    }
    
    let y1Values: [CandleChartDataEntry] = [
        CandleChartDataEntry.init(x: 0, shadowH: 260.0, shadowL: 254.0, open: 254.0, close: 256.0),
    ]
    let y2Values: [CandleChartDataEntry] = [
        CandleChartDataEntry.init(x: 1, shadowH: 264.0, shadowL: 248.0, open: 258.0, close: 256.0),
    ]

    private func setDataChart() {
        let set1 = CandleChartDataSet(entries: y1Values, label: "")
        set1.axisDependency = .left
        set1.setColor(.red)
        set1.drawIconsEnabled = false
        set1.decreasingColor = .red
        set1.increasingColor = .red
        set1.neutralColor = .red
        
        let set2 = CandleChartDataSet(entries: y2Values, label: "")
        set2.axisDependency = .left
        set2.setColor(.blue)
        set2.drawIconsEnabled = false
        set2.decreasingColor = .blue
        set2.increasingColor = .blue
        set2.neutralColor = .blue
        
        let data = CandleChartData.init(dataSets: [set1, set2])
//        let data = CandleChartData(dataSet: set1)
        lineChartView.data = data
    }
}

