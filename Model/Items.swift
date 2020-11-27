import Foundation

public struct Items: Model {
    public let resourceURI: String?
    public let name: String?

    public init(resourceURI: String?, name: String?) {
        self.resourceURI = resourceURI
        self.name = name
    }
}
