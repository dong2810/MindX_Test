//
//  HomeView.swift
//  MindXTest
//
//  Created by đông on 03/12/2022.
//

import SwiftUI

struct HomeView: View {
	@StateObject var quizManager = QuizManager()
    var body: some View {
		NavigationView {
			VStack(spacing: 40) {
				Text("QUIZ GAME")
					.fontWeight(.heavy)
					.foregroundColor(Color.red)
				Text("Are you ready to play this game?")
					.foregroundColor(Color.red.opacity(0.5))

				NavigationLink {
					QuestionView()
						.environmentObject(quizManager)
				} label: {
					ButtonNext(text: "Let's go!")
				}
			}
		}
		.background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.edgesIgnoringSafeArea(.all)

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
