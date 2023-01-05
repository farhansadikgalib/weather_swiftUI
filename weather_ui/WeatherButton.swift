//
//  WeatherButton.swift
//  weather_ui
//
//  Created by Farhan Sadik on 4/1/23.
//

import Foundation
import SwiftUI

struct WeatherButton: View {
    var title:String
    var bg:Color
    var textColor:Color
    var body: some View {
        Text(title).font(.system(size: 20,weight: .bold,design: .default))
        
            .frame(width: 250,height: 50).background(bg).cornerRadius(10).foregroundColor(textColor)
    }
}
