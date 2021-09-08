//
//  ContentView.swift
//  Bullseye
//
//  Created by James Elder on 5/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
                    Slider(value: .constant(50), in: 1.0...100)
                        .accentColor(.red)
                    Text("100")
                        .bold()
                        .font(.body)
                        .padding()
                }
            }
            Button(action: {}) {
                Text("Hit me")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.accentColor)
                
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
