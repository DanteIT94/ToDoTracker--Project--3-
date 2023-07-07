//
//  MockHelpers .swift
//  ToDoTracker
//
//  Created by Денис on 06.07.2023.
//

import Foundation

struct MockData {
    
    struct MockCategories {
        static let categories: [TrackerCategory] = [
            TrackerCategory(headerName: "Первый блок", trackerArray: [
                Tracker(id: UUID(), name: "1", color: .systemRed, emoji: "❤️", schedule: [4]),
                Tracker(id: UUID(), name: "2", color: .systemBlue, emoji: "❤️", schedule: [4]),
                Tracker(id: UUID(), name: "3", color: .systemGray, emoji: "❤️", schedule: [4]),
                Tracker(id: UUID(), name: "4", color: .systemPink, emoji: "❤️", schedule: [4]),
                Tracker(id: UUID(), name: "5", color: .systemGreen, emoji: "❤️", schedule: [4]),
            ]),
            TrackerCategory(headerName: "Второй блок", trackerArray: [
                Tracker(id: UUID(), name: "Этил", color: .colorSection5 ?? .green, emoji: "❤️", schedule: [0, 1, 2, 3, 4, 5, 6, 7]),
                Tracker(id: UUID(), name: "Метил", color: .systemBrown, emoji: "❤️", schedule: [0, 1, 2, 3, 4, 5, 6, 7]),
                Tracker(id: UUID(), name: "Пропил", color: .systemTeal, emoji: "❤️", schedule: [0, 1, 2, 3, 4, 5, 6, 7]),
                Tracker(id: UUID(), name: "Курил", color: .systemOrange, emoji: "❤️", schedule: [0, 1, 2, 3, 4, 5, 6, 7]),
                Tracker(id: UUID(), name: "Дверь Запил", color: .YPBlue ?? .blue, emoji: "❤️", schedule: [0, 1, 2, 3, 4, 5, 6, 7]),
            ])
        ]
    }
}
