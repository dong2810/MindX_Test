//
//  ButtonNext.swift
//  MindXTest
//
//  Created by đông on 03/12/2022.
//

import SwiftUI

struct ButtonNext: View {
	var text: String
	var background: Color = Color.purple
    var body: some View {
        Text(text)
			.foregroundColor(.white)
			.padding()
			.padding(.horizontal)
			.background(background)
			.cornerRadius(30)
			.shadow(radius: 10)
    }
}

struct ButtonNext_Previews: PreviewProvider {
    static var previews: some View {
        ButtonNext(text: "Next")
    }
}
