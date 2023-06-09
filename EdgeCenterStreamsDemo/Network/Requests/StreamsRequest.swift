import Foundation

struct StreamsRequest: DataRequest {
    typealias Response = [Stream]
    
    let token: String
    let page: Int
    
    var url: String { EdgeCenterApi.streams.rawValue }
    var method: HTTPMethod { .get }
    
    var headers: [String: String] {
        [ "Authorization" : "Bearer \(token)" ]
    }
    
    var queryItems: [String: String] {
        [ "page": String(page) ]
    }
}

struct StreamDetailsRequest: DataRequest {
    typealias Response = StreamDetails
    
    let token: String
    let id: Int
    
    var url: String { EdgeCenterApi.streams.rawValue + "/\(id)" }
    var method: HTTPMethod { .get }
    
    var headers: [String: String] {
        [ "Authorization" : "Bearer \(token)" ]
    }
}
