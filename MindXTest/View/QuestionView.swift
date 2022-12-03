//
//  QuestionView.swift
//  MindXTest
//
//  Created by đông on 03/12/2022.
//

import SwiftUI

struct QuestionView: View {
	@EnvironmentObject var quizManager: QuizManager

	var body: some View {
		if quizManager.reachedEnd {
			VStack(spacing: 20) {
				Text("Trivia Game")
				Text("Congratulations, you completed the game! 🥳")

				Text("You scored \(quizManager.score) out of \(quizManager.length)")

				Button {
					Task.init {
						await quizManager.fetchQuiz()
					}
				} label: {
					ButtonNext(text: "Play again")
				}
			}
			.foregroundColor(Color.purple)
			.padding()
			.frame(maxWidth: .infinity, maxHeight: .infinity)
			.background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
		} else {
			DetailQuestionView()
				.environmentObject(quizManager)
		}
	}
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
			.environmentObject(QuizManager())
    }
}
