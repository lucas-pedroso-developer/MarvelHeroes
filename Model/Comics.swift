import Foundation

public struct Comics: Model {
    public let available: Int?
    public let collectionURI: String?
    public let items: [Items]?
    public let returned: Int?

    public init(available: Int?, collectionURI: String?, items: [Items]?, returned: Int?) {
        self.available = available
        self.collectionURI = collectionURI
        self.items = items
        self.returned = returned
    }

}
