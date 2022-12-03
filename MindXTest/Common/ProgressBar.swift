//
//  ProgressBar.swift
//  MindXTest
//
//  Created by đông on 03/12/2022.
//

import SwiftUI

struct ProgressBar: View {
	var progress: CGFloat

    var body: some View {
		ZStack(alignment: .leading) {
			Rectangle()
				.frame(maxWidth: 350, maxHeight: 4)
				.foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
				.cornerRadius(10)

			Rectangle()
				.frame(width: progress, height: 4)
				.foregroundColor(Color.green)
				.cornerRadius(10)
		}
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 20)
    }
}