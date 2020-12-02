import Foundation

struct Data: Model {
    let offset: Int?
    let limit: Int?
    let total: Int?
    let count: Int?
    let results : [ComicsResults]?

    init(offset: Int?, limit: Int?, total: Int?, count: Int?, results : [ComicsResults]?) {
        self.offset = offset
        self.limit = limit
        self.total = total
        self.count = count
        self.results = results
    }

}
