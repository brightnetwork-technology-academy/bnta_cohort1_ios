import Foundation

enum DummyData {
    private static let firstNames = [
        "Dominique",
        "Jenna",
        "Kayla",
        "Omari",
        "Reid",
        "Ronan",
        "Felipe",
        "Camryn",
        "Pamela",
        "Ximena",
        "Reina",
        "Maxwell",
    ]

    private static let lastNames = [
        "Lin",
        "Rodgers",
        "Moss",
        "Holmes",
        "Sawyer",
        "Little",
        "Burgess",
        "Perry",
        "Acosta",
        "Faulkner",
        "Santana",
        "Nolan",
    ]

    static func withCount(_ count: Int) -> [Employee] {
        (0..<count).map { index in
            let firstName = Self.firstNames[index % Self.firstNames.count]
            let lastName = Self.lastNames[index % Self.lastNames.count]
            let employeeID = UUID().uuidString
            let imageURL = URL(string: "https://picsum.photos/id/\(index)/200/300")
            return .init(firstName: firstName, lastName: lastName, employeeID: employeeID, imageURL: imageURL)
        }
    }
}
