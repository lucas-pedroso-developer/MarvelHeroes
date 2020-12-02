import Foundation

struct Thumbnail: Model {
    let path: String?
    let imageExtension: String?

    enum CodingKeys: String, CodingKey {
        case path = "path"
        case imageExtension = "extension"
    }

    init(path : String?, imageExtension: String?) throws {
        self.path = path
        self.imageExtension = imageExtension
    }

}
