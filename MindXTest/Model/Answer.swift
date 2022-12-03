//
//  Answer.swift
//  MindXTest
//
//  Created by đông on 03/12/2022.
//

import Foundation

struct Answer: Identifiable {
	var id = UUID()
	let text: AttributedString
	let isCorrect: Bool
}
