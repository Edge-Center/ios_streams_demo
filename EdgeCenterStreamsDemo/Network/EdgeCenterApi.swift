import Foundation

enum EdgeCenterApi: String {
    case authorization = "https://api.edgecenter.ru/iam/auth/jwt/login"
    case refreshToken = "https://api.edgecenter.ru/iam/auth/jwt/refresh"
    case streams = "https://api.edgecenter.ru/streaming/streams"
    case broadcasts = "https://api.edgecenter.ru/streaming/broadcasts"
}
