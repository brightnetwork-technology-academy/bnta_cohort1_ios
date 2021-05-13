import CoreLocation
import Foundation

private let kBaseURL = URL(string: "https://api.tomorrow.io/v4")!
private let kTimelinePath = "timelines"

class TomorrowService {
    static let shared = TomorrowService()

    private init() {}

    func fetchTimelines(for location: CLLocationCoordinate2D, completion: @escaping (Result<[TimelineResponse.Timeline], TomorrowServiceError>) -> Void) {
        let url = kBaseURL.appendingPathComponent(kTimelinePath)
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)!

        components.queryItems = [
            URLQueryItem(name: "units", value: "metric"),
            URLQueryItem(name: "timesteps", value: "1h"),
            URLQueryItem(name: "apikey", value: "mA67kJwJOkCmHr8m9OcLeAXeFgXhobCn"),
            URLQueryItem(name: "location", value: "\(location.latitude),\(location.longitude)"),
            URLQueryItem(name: "fields", value: "temperature")
        ]

        var request = URLRequest(url: components.url!)
        request.httpMethod = "GET"

        URLSession.shared.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                guard let data = data else {
                    return completion(.failure(.unknown))
                }
                
                let decoder = JSONDecoder()
                let formatter = DateFormatter()
                formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
                decoder.dateDecodingStrategy = .formatted(formatter)
                
                guard let timelineResponse = try? decoder.decode(TimelineResponse.self, from: data) else {
                    return completion(.failure(.unknown))
                }
                
                completion(.success(timelineResponse.data.timelines))
            }
        }.resume()
    }
}
