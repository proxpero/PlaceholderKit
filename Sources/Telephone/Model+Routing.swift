
import Telephone

enum Endpoint: String {
    case users
    case albums
    case photos
    case posts
    case comments
    case todos
}

public struct Route {

    public static var shared: Route?
    public static func setShared(scheme: String, host: String) {
        guard Route.shared == nil else { return }
        Route.shared = Route(scheme: scheme, host: host)
    }

    let urlProvider: URLProvider

    init(scheme: String = "https", host: String) {
        self.urlProvider = URLProvider(scheme: scheme, host: host)
    }

    func url(for endpoint: Endpoint, id: Int? = nil) -> URL {
        let url = urlProvider.baseURL.appendingPathComponent(endpoint.rawValue)
        if let id = id {
            return url[id]
        }
        return url
    }

}

extension URL {

    subscript(endpoint: Endpoint) -> URL {
        return self.appendingPathComponent(endpoint.rawValue)
    }

    subscript(id: Int) -> URL {
        return self.appendingPathComponent("\(id)")
    }
}
