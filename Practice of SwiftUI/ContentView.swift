//
//  ContentView.swift
//  Practice of SwiftUI
//
//  Created by 沈清昊 on 3/4/23.
//

import SwiftUICharts
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Spacer()
            // Line chart
            LineChartView(data: [20, 18, 2, 1, 5, 8], title: "The Line example")
            Spacer()
            // Bar chart
            BarChartView(
                data: ChartData(values: [
                    ("Shen", 23),
                    ("Xing", 20),
                    ("Hu", 19)
                ]),
                title: "Bar example")
            Spacer()

            // Pie chart
            PieChartView(data: [30, 40, 20, 10, 55], title: "Pie example")
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
