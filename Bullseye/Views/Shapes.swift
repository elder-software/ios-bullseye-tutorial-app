//
//  Shapes.swift
//  Bullseye
//
//  Created by James Elder on 2/02/22.
//

import SwiftUI

struct Shapes: View {
  var body: some View {
    VStack {
      Circle()
        .strokeBorder(Color.blue, lineWidth: 20.0)
        .frame(width: 200, height: 100)
      RoundedRectangle(cornerRadius: 20.0)
        .fill(Color.blue)
      
      Capsule()
      Ellipse()
    }
    .background(Color.green)
  }
}

struct Shapes_Previews: PreviewProvider {
  static var previews: some View {
    Shapes()
  }
}
