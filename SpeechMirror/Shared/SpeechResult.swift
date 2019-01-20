import Foundation

struct SpeechResult: Codable {
    let message: String

    init(message: String) {
        self.message = message
    }
}

extension SpeechResult {
    var asData: Data {
        return try! JSONEncoder().encode(self)
    }
}
