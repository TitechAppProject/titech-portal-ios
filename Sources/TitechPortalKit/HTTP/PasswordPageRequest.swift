import Foundation

#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

struct PasswordPageRequest: HTTPRequest {
    let url: URL = URL(
        string: BaseURL.origin + "/GetAccess/Login?Template=userpass_key&AUTHMETHOD=UserPassword")!

    var method: HTTPMethod = .get

    var headerFields: [String: String]? = [
        "Connection": "keep-alive",
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Accept-Encoding": "br, gzip, deflate",
        "Accept-Language": "ja-jp",
    ]

    var body: [String: String]? = nil
}
