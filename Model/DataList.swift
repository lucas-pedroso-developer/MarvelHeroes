import Foundation

public struct DataList: Model {
    public let offset: Int?
    public let limit: Int?
    public let total: Int?
    public let count: Int?
    public let results: [Results]?

    init(offset: Int?, limit: Int?, total: Int?, count: Int?, results: [Results]?) throws {
        self.offset = offset
        self.limit = limit
        self.total = total
        self.count = count
        self.results = results
    }

}
