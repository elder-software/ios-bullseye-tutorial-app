//
//  ContentView.swift
//  Bullseye
//
//  Created by James Elder on 5/09/21.
//

import SwiftUI

struct ContentView: View {
  @State private var alertIsVisible = false
  @State private var sliderValue = 50.0
  @State private var game = Game()
  
  var body: some View {
    ZStack {
      Color("BackgroundColour")
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
      VStack {
        VStack {
          VStack {
            InstructionsView(game: $game)
            HStack {
              Text("1")
                .bold()
                .font(.body)
                .foregroundColor(Color("TextMain"))
              Slider(value: $sliderValue, in: 1.0...100)
                .accentColor(.red)
              Text("100")
                .bold()
                .font(.body)
                .foregroundColor(Color("TextMain"))
            }
            .padding()
          }
          VStack {
            Button(action: {
              alertIsVisible = true
            }) {
              Text("Hit me".uppercased())
                .bold()
                .font(.title3)
            }
            .padding(20.0)
            .background(
              ZStack {
                Color("ButtonColour")
                LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
              }
            )
            .foregroundColor(Color.white)
            .cornerRadius(21.0)
            .alert(isPresented: $alertIsVisible, content: {
              let roundedValue = Int(sliderValue.rounded())
              return Alert(title: Text("Hello"), message: Text("The sliders value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round"), dismissButton: .default(Text("Dismiss")))
            })
          }
        }
      }
    }
  }
}

struct InstructionsView: View {
  
  @Binding var game: Game
  
  var body: some View {
    VStack {
      InstructionText(text: "🎯🎯🎯\nPut the Bullseye as close as you can to ")
        .padding(.leading, 30.0)
        .padding(.trailing, 30.0)
      BigNumberText(text: String(game.target))
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    
    ContentView()
      .previewLayout(.fixed(width: 568, height: 320))
    
    ContentView()
      .preferredColorScheme(.dark)
    
    ContentView()
      .preferredColorScheme(.dark)
      .previewLayout(.fixed(width: 568, height: 320))
  }
}
