import Foundation

struct TimelineResponse: Codable {
    struct Timeline: Codable {
        struct Interval: Codable {
            struct Value: Codable {
                let temperature: Double?
            }

            let startTime: Date?
            let values: Value?
        }

        let startTime: Date?
        let endTime: Date?
        let intervals: [Interval]?
    }

    struct TimelineData: Codable {
        let timelines: [Timeline]
    }
    
    let data: TimelineData
}

enum TomorrowServiceError: Error {
    case unknown
}
