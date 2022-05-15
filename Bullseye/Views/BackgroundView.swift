//
//  BackgroundView.swift
//  Bullseye
//
//  Created by James Elder on 15/02/22.
//

import SwiftUI

struct BackgroundView: View {
  @Binding var game: Game
  
  var body: some View {
    VStack {
      TopView(game: $game)
    }
    .padding()
    .background(
      Color("BackgroundColour")
    )
  }
}

struct TopView: View {
  @Binding var game: Game
  
  var body: some View {
    Text("Hello poop")
  }
}

struct BackgroundView_Previews: PreviewProvider {
  static var previews: some View {
    BackgroundView(game: .constant(Game()))
  }
}
