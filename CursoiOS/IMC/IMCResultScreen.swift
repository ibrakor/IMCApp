//
//  IMCResult.swift
//  CursoiOS
//
//  Created by Brahim Korsan El Ghabi on 18/8/24.
//

import SwiftUI

struct IMCResultScreen: View {
    let weight : Int
    let height : Int
    var body: some View {
        let result = calculateIMC(weight: weight, height: height)
        VStack{
            Text("Your result").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
            ResultView(result: result)
            
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundApp)
    }
}

func calculateIMC(weight : Int, height : Int) -> Double{
    let heightInMeters = Double(height) / 100
    return Double(weight) / pow(heightInMeters, 2)
}
struct ResultView : View {
    let result : Double
    var body: some View {
        let allIMCInfo = getIMCResult(result: result)
        VStack{
            Spacer()
            Text(allIMCInfo.0).foregroundColor(allIMCInfo.2).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
            Spacer()
            Text("\(result, specifier: "%.2f")").font(.system(size: 80))
            Spacer()
            Text(allIMCInfo.1).foregroundColor(.white).font(.title2)
            Spacer()
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundComponent).cornerRadius(16).padding(16)
    }
}

func getIMCResult(result: Double) -> (String, String, Color) {
    let title: String
    let description: String
    let color: Color
    
    switch result {
    case ..<18.5:
        title = "Underweight"
        description = "Your BMI is below the healthy range, indicating potential malnutrition or other health concerns."
        color = Color.yellow
        
    case 18.5..<25:
        title = "Normal Weight"
        description = "Your BMI is within the healthy range, suggesting a lower risk for weight-related health issues."
        color = Color.green
        
    case 25..<30:
        title = "Overweight"
        description = "Your BMI is higher than the normal range, which may increase the risk of certain health conditions."
        color = Color.yellow
        
    case 30...:
        title = "Obesity"
        description = "Your BMI is within the obesity range, indicating a significant risk of developing serious health problems."
        color = Color.red
        
    default:
        title = "Invalid"
        description = "Please enter a valid BMI."
        color = Color.gray
    }
    
    return (title, description, color)
}

#Preview {
    IMCResultScreen(weight: 63, height: 173)
}
