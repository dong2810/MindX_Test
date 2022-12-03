//
//  DetailQuestionView.swift
//  MindXTest
//
//  Created by đông on 03/12/2022.
//

import SwiftUI

struct DetailQuestionView: View {
	@EnvironmentObject var quizManager: QuizManager

	var body: some View {
		VStack(spacing: 40) {
			HStack {
				Text("Trivia Game")

				Spacer()

				Text("\(quizManager.index + 1) out of \(quizManager.length)")
					.foregroundColor(Color("AccentColor"))
					.fontWeight(.heavy)
			}

			ProgressBar(progress: quizManager.progress)

			VStack(alignment: .leading, spacing: 20) {
				Text(quizManager.question)
					.font(.system(size: 20))
					.bold()
					.foregroundColor(.gray)

				ForEach(quizManager.answerChoices, id: \.id) { answer in
					AnswerRow(answer: answer)
						.environmentObject(quizManager)
				}
			}

			Button {
				quizManager.goToNextQuestion()
			} label: {
				ButtonNext(text: "Next", background: quizManager.answerSelected ? Color("AccentColor") : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
			}
			.disabled(!quizManager.answerSelected)

			Spacer()
		}
		.padding()
		.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
		.background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
		.navigationBarHidden(true)
	}
}

struct DetailQuestionView_Previews: PreviewProvider {
    static var previews: some View {
        DetailQuestionView()
			.environmentObject(QuizManager())
    }
}
