//
//  TextViews.swift
//  Bullseye
//
//  Created by James Elder on 1/02/22.
//

import SwiftUI

struct InstructionText: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .bold()
      .kerning(2.0)
      .multilineTextAlignment(.center)
      .lineSpacing(4.0)
      .font(.footnote)
      .foregroundColor(Color("TextMain"))
  }
}

struct BigNumberText: View {
  var text: String
  var body: some View {
    Text(String(text))
      .kerning(-1.0)
      .font(.largeTitle)
      .fontWeight(.black)
      .foregroundColor(Color("TextMain"))
  }
}

struct SliderLabelText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .foregroundColor(Color("TextMain"))
  }
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      InstructionText(text: "Instructions")
      BigNumberText(text: "999")
      SliderLabelText(text: "121")
    }
  }
}
