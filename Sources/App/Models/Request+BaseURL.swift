import Vapor

extension Request {
    var baseURL: String {
        var host = http.headers.firstValue(name: .host)!
        if host.hasSuffix("/") {
            host = String(host.dropLast())
        }
        let scheme = http.remotePeer.scheme ?? "http"
        return "\(scheme)://\(host)/todos/"
    }
}
