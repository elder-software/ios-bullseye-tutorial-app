//
//  ContentView.swift
//  Bullseye
//
//  Created by James Elder on 5/09/21.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0

    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO ")
                        .bold()
                        .kerning(2.0)
                        .multilineTextAlignment(.center)
                        .lineSpacing(4.0)
                        .font(.footnote)
                    Text("89")
                        .kerning(-1.0)
                        .font(.largeTitle)
                        .fontWeight(.black)
                    HStack {
                        Text("1")
                            .bold()
                            .font(.body)
                            .padding()
                        Slider(value: self.$sliderValue, in: 1.0...100)
                            .accentColor(.red)
                        Text("100")
                            .bold()
                            .font(.body)
                            .padding()
                    }
                }
                VStack {
                    Button(action: {
                        self.alertIsVisible = true
                    }) {
                        Text("Hit me")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.accentColor)
                    }
                    .alert(isPresented: $alertIsVisible, content: {
                        return Alert(title: Text("Hello"), message: Text("NEW MESSAGE"), dismissButton: .default(Text("Dismiss")))
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
        ContentView()
            .previewLayout(.fixed(width: 560, height: 320))
    }
}
