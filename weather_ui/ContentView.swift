//
//  ContentView.swift
//  weather_ui
//
//  Created by Farhan Sadik on 4/1/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    
    var body: some View {
        ZStack {
            BackgroundColor(isNight: $isNight)
            

            
            VStack(spacing: 10){
                CityAndCountryView(CityName: "Dhaka, BD")
                
                VStack{
             
                    MainWeatherStatusView(icon: isNight ? "moon.stars.fill" : "cloud.sun.rain.fill", temp: 11)
                    
                    
                    Spacer()
                    
                    HStack(spacing: 25){
                         
                 
                        WeatherDay(dayOfWeek: "SUN", imageName:"cloud.rain.fill", temp:11)
                        
                        WeatherDay(dayOfWeek: "MON", imageName:"cloud.fill", temp:12)
                        WeatherDay(dayOfWeek: "TUE", imageName:"cloud.sun.fill", temp:16)
                        WeatherDay(dayOfWeek: "WED", imageName:"snow", temp:20)
                        WeatherDay(dayOfWeek: "THU", imageName:"sunset.fill", temp:33)
                      
                        
                    }
                    
                    Spacer()
                    
                    Button{
                        isNight.toggle()
                    }label: {
                        WeatherButton(title: "Change Day Time", bg: Color.white, textColor: Color.mint)
                        
                    }
                
                
                    
                    
                    Spacer()
                    
                    
                }
                
                Spacer()
                
                
            }
            
         
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDay: View {
    
    var dayOfWeek: String;
    var imageName: String;
    var temp:Int;
    
    var body: some View {
        VStack{
            Text(dayOfWeek).font(.system(size: 20,weight: .bold)).foregroundColor(.white)
            Image(systemName:imageName).renderingMode(.original).resizable().aspectRatio(contentMode: .fit).frame(width: 50,height: 50)
            Text("\(temp)°").font(.system(size: 25,weight: .bold)).foregroundColor(.white)
            
        }
    }
}

struct BackgroundColor: View {
    @Binding var isNight: Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,  isNight ? .gray : .mint]), startPoint: /*@START_MENU_TOKEN@*/.topLeading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottomTrailing/*@END_MENU_TOKEN@*/).edgesIgnoringSafeArea(.all)
    }
}


struct MainWeatherStatusView: View{
    var icon:String
    var temp:Int
    var body: some View{
        
        Image(systemName: icon).renderingMode(.original).resizable().frame(width: 180,height: 180).aspectRatio( contentMode: .fit)
        
        Text("\(temp)°").font(.system(size: 70,weight: .bold)).foregroundColor(.white)
        
    }
}

struct CityAndCountryView: View {
    var CityName:String
    var body: some View {
        Text(CityName)
            .font(.system(size: 32,weight:.bold,design: .default))
            .foregroundColor(.white)
            .padding()
    }
}



