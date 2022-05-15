//
//  RoundViews.swift
//  Bullseye
//
//  Created by James Elder on 7/02/22.
//

import SwiftUI

struct RoundedImageViewStroked: View {
  var systemName: String
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextMain"))
      .frame(width: 56.0, height: 56.0)
      .overlay(
        Circle()
          .strokeBorder(Color("ButtonStrokeColour"), lineWidth: 2.0)
      )
  }
}

struct RoundedImageViewFilled: View {
  var systemName: String
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .frame(width: 56.0, height: 56.0)
      .foregroundColor(Color("ButtonFilledTextColour"))
      .background(
      Circle()
        .fill(Color("ButtonFilledBackgroundColour"))
      )
  }
}

struct PreviewView: View {
  var body: some View {
    VStack(spacing: 10.0) {
      RoundedImageViewStroked(systemName: "arrow.counterclockwise")
      RoundedImageViewFilled(systemName: "list.dash")
    }
  }
}

struct RoundViews_Previews: PreviewProvider {
  static var previews: some View {
    PreviewView()
    PreviewView()
      .preferredColorScheme(.dark)
  }
}
