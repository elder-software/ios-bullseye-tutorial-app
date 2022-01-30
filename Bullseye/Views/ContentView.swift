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
            Text("🎯🎯🎯\nPut the Bullseye as close as you can to ".uppercased())
              .bold()
              .kerning(2.0)
              .multilineTextAlignment(.center)
              .lineSpacing(4.0)
              .font(.footnote)
            Text(String(game.target))
              .kerning(-1.0)
              .font(.largeTitle)
              .fontWeight(.black)
            HStack {
              Text("1")
                .bold()
                .font(.body)
              Slider(value: $sliderValue, in: 1.0...100)
                .accentColor(.red)
              Text("100")
                .bold()
                .font(.body)
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

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
