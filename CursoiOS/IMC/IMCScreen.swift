
import SwiftUI

struct IMCScreen: View {
    @State var gender: Int = 0
    @State var height:Double = 165
    @State var age : Int = 18
    @State var weight : Int = 60
    var body: some View {
        VStack{
            HStack {
                ToggleButton(title: "Man", imageName: "ic_man", gender:  0, selectedGender: $gender)
                ToggleButton(title: "Woman", imageName: "ic_woman", gender: 1, selectedGender: $gender)
            }
            HeightSection(selectedHeight: $height)
            HStack {
                CounterBox(titleText: "Age", value: $age)
                CounterBox(titleText: "Weight (kg)", value: $weight)
            }
            IMCResult(weight: weight, height: Int(height))
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
        .toolbar{
            ToolbarItem(placement: .principal) {
                Text("IMC Calculator").foregroundColor(.white)
            }
        }
    }
}

struct ToggleButton : View {
    let title : String
    let imageName : String
    let gender : Int
    @Binding var selectedGender : Int
    var body: some View {
        let color = if(gender == selectedGender){
            Color.backgroundSelected
        } else {
            Color.backgroundComponent
        }
        Button(action: {
            selectedGender = gender
        }){
            VStack{
                Image(imageName).resizable().scaledToFit().frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                InfoText(text: title)
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(color)
        }
    }
}

struct InfoText : View {
    let text : String
    var body: some View {
        Text(text).font(.largeTitle).bold().foregroundColor(.white)
    }
}

struct TitleText : View {
    let text:String
    var body: some View {
        Text(text).font(.title).bold().foregroundColor(.gray)
        
    }
}

struct HeightSection : View {
    @Binding var selectedHeight:Double
    var body: some View {
        VStack{
            TitleText(text: "Height")
            InfoText(text: "\(Int(selectedHeight)) cm")
            Slider(value:$selectedHeight , in:100...230, step: 1).accentColor(.green).padding(.horizontal, 16)
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundComponent)
    }
}
struct CounterBox:View {
    let titleText : String
    @Binding var value : Int
    var body: some View {
        VStack{
            TitleText(text: "\(titleText)")
            InfoText(text: String(value))
            HStack{
                Button(action: {
                    if(value<120){
                        value += 1
                        
                    }
                }){
                    Image(systemName: "plus.circle").resizable().scaledToFit().frame(width: 60).foregroundColor(.white)
                }
                Button(action: {
                    if(value>1){
                        value -= 1
                        
                    }
                    
                }){
                    Image(systemName: "minus.circle").resizable().scaledToFit().frame(width: 60).foregroundColor(.white)
                }
                
            }
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundComponent)
    }
}

struct IMCResult : View {
    let weight : Int
    let height : Int
    var body: some View {
        NavigationStack{
            NavigationLink(destination: {IMCResultScreen(weight: weight, height: height)}){
                Text("Calculate").font(.title).bold().foregroundColor(.green).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundComponent)
            }
        }
    }
}


#Preview {
    IMCScreen()
}
