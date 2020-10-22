//
//  ButtonFormat.swift
//  StateAndDataFlowApp
//
//  Created by Evgenia Shipova on 22.10.2020.
//

import SwiftUI

struct ButtonForContentView: View {
    let buttonName: String
    let color: Color
    var action: () -> Void
    
    var body: some View {
        Button(action:  action) {
            Text("\(buttonName)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct ButtonFormat_Previews: PreviewProvider {
    static var previews: some View {
        ButtonForContentView(buttonName: "start",  color: Color.red, action: {})
    }
}
