import Foundation

public struct Thumbnail: Model {
    public var path: String?
    public var imageExtension: String?

    enum CodingKeys: String, CodingKey {
        case path = "path"
        case imageExtension = "extension"
    }
    
    public init(path: String?, imageExtension: String?) throws {
        self.path = path
        self.imageExtension = imageExtension
    }

}
